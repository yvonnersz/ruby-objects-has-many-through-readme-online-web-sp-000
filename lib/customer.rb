class Customer
  attr_accessor :name, :age, :customer
  @@all = []

  def initialize(name,age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter,total,tip)
    Meal.new(waiter,self,total,tip)
  end

  def meals
    Meals.all.select do |meal|
      meal.customer == self
    end
  end

end
