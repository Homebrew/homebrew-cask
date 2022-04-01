cask "ganttproject" do
  version "3.2.3230"
  sha256 "4e6ebd308378d3d1936050ff6407630692d5b8833f05f139428b052cf91982dc"

  ## Normally `version_of_github_release` is the same as `version`, so
  ## one would say:
  # version_of_github_release = version()
  ## ... But currently this isn't the case:
  version_of_github_release = "3.2.3200"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version_of_github_release}/ganttproject-#{version}.dmg",
      verified: "github.com/bardsoftware/ganttproject/"
  name "GanttProject"
  desc "Gantt chart and project management application"
  homepage "https://www.ganttproject.biz/"

  app "GanttProject.app"
end
