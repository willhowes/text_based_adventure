# Greet user
puts "WELCOME THE TEXT-BASED ADVENTURE"
# Give user movement options
puts "You have three options: "
puts "1. Move left (enter 'l')"
puts "2. Move right (enter 'r')"
puts "3. Move forward (enter 'f')"

#set a count for going forward
forward_count = 0
# set bolean object for dead to be false
dead = false
# Set a while loop to run until the user dies
until forward_count >= 2 || dead
  puts "Enter your move: "
  # Set a variable for the user's input
  direction = gets.chomp.downcase
  if direction == "f"
    forward_count += 1
    if forward_count == 2
      puts "You win!"
      puts "GAME OVER"
      break
  else
    puts "move again"
  end
  elsif direction == "l"
    puts "You got eaten by a goblin"
    puts "GAME OVER"
    dead = true
  elsif direction == "r"
    puts "You got eaten by a werewolf"
    puts "GAME OVER"
    dead = true
  else
    puts "Not a valid command. Try again"
  end
end
