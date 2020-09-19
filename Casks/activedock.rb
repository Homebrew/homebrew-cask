cask "activedock" do
  version "2.48,2048"
  sha256 "9415f9574dc82e08fc875b1ec6a9698553cbe8b05e4587f6ec4a8ebc1322eb53"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
