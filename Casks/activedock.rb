cask "activedock" do
  version "2.56,2056"
  sha256 "1d87b5f3b3e0e8e04e559a22a9bda092c9244b78e182d1bd8d67a993a6d9b07b"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
