cask "ganttproject" do
  version "3.2.3200"
  sha256 "6dde4a151cabdf69fe84a3ea6d4b943233c8f9cb181bdac9168a6748e74778a6"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version}/ganttproject-#{version}.dmg",
      verified: "github.com/bardsoftware/ganttproject/"
  name "GanttProject"
  desc "Gantt chart and project management application"
  homepage "https://www.ganttproject.biz/"

  app "GanttProject.app"
end
