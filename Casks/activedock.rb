cask "activedock" do
  version "2.32,2032"
  sha256 "28f73ff8a774c3cb8a458789755ad63a3c834f95f22f4ee0716334d71a1eaa5e"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
