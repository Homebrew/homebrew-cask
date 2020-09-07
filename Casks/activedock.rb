cask "activedock" do
  version "2.42,2042"
  sha256 "72ebf918e7c23118a3f4760080c02aba40dd4cba73d0d8e1fbe3e5636a33df52"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
