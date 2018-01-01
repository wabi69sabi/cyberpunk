class Player

  # Just for testing purposes:
  attr_reader :name, :height, :build, :eye_color, :hair_color, :stats, :skills
  attr_writer :name, :height, :build, :eye_color, :hair_color, :stats, :skills

  def initialize(attributes={})
    @name = attributes[:name]
    @height = attributes[:name]
    @build = attributes[:build]
    @eye_color = attributes[:eye_color]
    @hair_color = attributes[:hair_color]
    @stats = attributes[:stats]
    @skills = attributes[:skills]
  end

  def add_skill(skills)
    @skills << skills
    @skills.uniq!
  end

  def add_stats(stats={})
    @stats.merge!(stats)
  end
end

# examples:
don = Player.new({:skills => ["fast runner", "slim climber"], :stats => {:default => 0}})
don.add_stats({:agility =>3, :strength => 5})
don.add_skill("sneaky")
