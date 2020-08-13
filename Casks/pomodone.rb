cask "pomodone" do
  version "1.5.1545"
  sha256 "8c1f7b1d9201501699f5b73b96ddb81869cc3aec5aeac48b11e67b0f8c78aa1b"

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  appcast "https://pomodoneapp.com/download-pomodone-app.html"
  name "PomoDone"
  homepage "https://pomodoneapp.com/"

  app "PomoDoneApp.app"
end
