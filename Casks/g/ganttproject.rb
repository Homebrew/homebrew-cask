cask "ganttproject" do
  arch arm: "silicon", intel: "intel"

  version "3.3.3316"
  sha256 arm:   "fd5f8941b73bec53f1f08ef5696480a22f872fc2a098b6aef2defa99817bce25",
         intel: "0bb0e3af5b1e3627ea8cc5f4c33ec84d6829aa682b118369039fbaf95ab4f096"

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
