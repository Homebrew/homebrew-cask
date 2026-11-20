cask "ganttproject" do
  arch arm: "silicon", intel: "intel"

  version "3.3.3323"
  sha256 arm:   "1a3c1431a90268453fa0c37981087f5dff2fc5c789196a7e5889ee34f98f9375",
         intel: "573c59d43ed9206b89eae4c439b88ef9531ddb5c27585559fd0b24ac0f5c138d"

  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version}/ganttproject-#{version}-#{arch}.dmg"
  name "GanttProject"
  desc "Gantt chart and project management application"
  homepage "https://www.ganttproject.biz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "GanttProject.app"

  zap trash: [
    "~/.ganttproject",
    "~/.ganttproject.d",
    "~/Library/Caches/GanttProject",
    "~/Library/Preferences/com.bardsoftware.ganttproject.plist",
  ]
end
