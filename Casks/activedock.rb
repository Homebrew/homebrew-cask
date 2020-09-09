cask "activedock" do
  version "2.44,2044"
  sha256 "5e116236009bbc24e389c7074bd3f159ba4ffca584d4ecdb9b9b6c48afe11df3"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
