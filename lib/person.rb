require 'pry'
class Person
  #your code here
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  def initialize(hash)
 
    # binding.pry
   #  hash.each do |attribute, property|
   #    self.public_send(attribute, property)
   # end

    hash.each do |attribute, property|
      method_name = attribute.to_s + "="
      public_send(method_name, property)
    end

 #end method
  end
end #end class
