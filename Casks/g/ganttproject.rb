cask "ganttproject" do
  arch arm: "silicon", intel: "intel"

  version "3.3.3300"
  sha256 arm:   "4260ea2f2f7b7e960aab13729ce71b231a38059064d1e82a787867124994150c",
         intel: "2119348b2d5357925d4d522e3d01e3af12d398654edd1c90734d5f9b34c75c67"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version}/ganttproject-#{version}-#{arch}.dmg",
      verified: "github.com/bardsoftware/ganttproject/"
  name "GanttProject"
  desc "Gantt chart and project management application"
  homepage "https://www.ganttproject.biz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GanttProject.app"

  zap trash: [
    "~/.ganttproject",
    "~/.ganttproject.d",
    "~/Library/Preferences/com.bardsoftware.ganttproject.plist",
  ]
end
