cask "ganttproject" do
  arch arm: "silicon", intel: "intel"

  version "3.3.3312"
  sha256 arm:   "172944106bb7b347df3a3d70c6bc5625084fa08cf006cdb9e451886937bcb78c",
         intel: "ec40dc0bf04333b5b0830404534995bc3f480abf69849c0eb194251fc8637e49"

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
