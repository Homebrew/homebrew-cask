cask "activedock" do
  version "2.36,2036"
  sha256 "0d0a8a0c4e33412c75930319c7781c27dbbece6c0e064efb9794a2fc22343c9a"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
