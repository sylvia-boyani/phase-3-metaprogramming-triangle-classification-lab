class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    true_triangle
      if  a == b && b == c
        :equilateral
      elsif a == b || b  == c || c == a
        :isosceles
      else
        :scalene
      end
  end


  def true_triangle
    real_triangle =  [(a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each do |side|
        real_triangle << false if side <= 0
      raise TriangleError if real_triangle.include?(false)
      end
  end

  class TriangleError < StandardError
    def message
      "Not a triangle!"
    end
  end

end
