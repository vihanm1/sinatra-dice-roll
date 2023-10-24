# /dice.rb


require "sinatra"

get("/") do
  "Hello World"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

require "sinatra/reloader"

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

get ("dice/2/10") do
  first_dies = rand(1..6)
  second_dies - rand(1..6)
  sums = first_dies + second_dies
  outcomes = "You rolled a #{first_dies} and a #{second_dies} for a total of #{sums}."

  "<h2>2d10</h1>
    <p>#{outcomes}</p>"
end
