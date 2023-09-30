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
    regex(%r{/ganttproject[._-]v?(\d+(?:\.\d+)+)/ganttproject[._-]v?(\d+(?:\.\d+)+)\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "GanttProject.app"

  zap trash: [
    "~/.ganttproject",
    "~/.ganttproject.d",
    "~/Library/Preferences/com.bardsoftware.ganttproject.plist",
  ]
end
