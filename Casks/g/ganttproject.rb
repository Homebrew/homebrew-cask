cask "ganttproject" do
  arch arm: "silicon", intel: "intel"

  version "3.3.3330"
  sha256 arm:   "79913bd7fbb25ca313fc1429e8b2fcd05afe667d4ad513c6409b16f9e3f66257",
         intel: "a3f7e08d87318aba2f7261d39c7f6986a9b2443a9cd4a9fbe7475c26dacfa1be"

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
