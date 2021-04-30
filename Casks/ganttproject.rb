cask "ganttproject" do
  version "3.0.3000"
  sha256 "be30dc8ded552109f16c4f4388a440f7a09aa3151632832cb30c62efb5d875de"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version}/ganttproject-#{version}.dmg",
      verified: "github.com/bardsoftware/ganttproject/"
  name "GanttProject"
  desc "Gantt chart and project management application"
  homepage "https://www.ganttproject.biz/"

  app "GanttProject.app"
end
