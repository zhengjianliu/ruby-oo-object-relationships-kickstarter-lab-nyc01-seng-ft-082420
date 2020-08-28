class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new( self ,backer)
  end

  def backers
    #binding.pry
    ProjectBacker.all.filter{ |project| project.project == self}.map{ |project| project.backer}
  end
end
