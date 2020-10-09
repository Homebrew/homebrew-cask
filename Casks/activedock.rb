cask "activedock" do
  version "2.55,2055"
  sha256 "08e82dc73308d82a74e6227f6bfeb801dd81ad0997905b300a26e8ecce1a2c33"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
