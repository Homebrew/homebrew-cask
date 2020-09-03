cask "activedock" do
  version "2.39,2039"
  sha256 "bcc56e36fdccdcc597e28d6f76bb40d2097ed9fa9eedc1eca23eab6700ba46ba"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
