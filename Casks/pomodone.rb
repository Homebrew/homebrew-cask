cask "pomodone" do
  version "1.5.1551"
  sha256 "777a1ffdaa8c9d702126ca560b655c3a9790ac75895640dad5cda7abdc880717"

  url "https://app.pomodoneapp.com/installers/PomoDoneApp-#{version}.dmg"
  name "PomoDone"
  desc "Pomodoro time tracker"
  homepage "https://pomodoneapp.com/"

  livecheck do
    url "https://pomodoneapp.com/download-pomodone-app.html"
    regex(%r{href=.*?/PomoDoneApp-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "PomoDoneApp.app"
end
