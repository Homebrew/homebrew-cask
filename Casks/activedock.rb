cask "activedock" do
  version "2.38,2038"
  sha256 "2d7d5d3b151fc4c36b406fddeb16ed304adf44f6d8ceaabceaeec154f21d8a98"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
