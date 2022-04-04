cask "ganttproject" do
  version "3.2.3200,3.2.3230"
  sha256 "4e6ebd308378d3d1936050ff6407630692d5b8833f05f139428b052cf91982dc"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.csv.first}/ganttproject-#{version.csv.second}.dmg",
      verified: "github.com/bardsoftware/ganttproject/"
  name "GanttProject"
  desc "Gantt chart and project management application"
  homepage "https://www.ganttproject.biz/"

  livecheck do
    url :url
    regex(%r{href=.*ganttproject[._-]v?(\d+(?:\.\d+)+)/ganttproject[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :github_latest do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "GanttProject.app"
end
