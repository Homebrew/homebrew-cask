cask "activedock" do
  version "2.50,2050"
  sha256 "70575c6d52f172aa586b32e24897bd2a75708f1fb9e012e4cc2fcc3013fea1c0"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
