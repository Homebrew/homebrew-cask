cask "ganttproject" do
  version "3.1.3100"
  sha256 "397f7d41be9786bd1aab8bca2429df4d2474c6cfeea3566263d026554ffb5507"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version}/ganttproject-#{version}.dmg",
      verified: "github.com/bardsoftware/ganttproject/"
  name "GanttProject"
  desc "Gantt chart and project management application"
  homepage "https://www.ganttproject.biz/"

  app "GanttProject.app"
end
