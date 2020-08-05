cask "activedock" do
  version "2.33,2033"
  sha256 "7c9d135f986585b5de5ffbd7090dd265d25f487fc3042e1618adc3000af14ff1"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
