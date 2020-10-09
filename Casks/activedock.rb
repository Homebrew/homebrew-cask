cask "activedock" do
  version "2.55,2055"
  sha256 "e0f0bc070e2c438d9811c251c92a7bf7ac3032beeacd3d843e5feb995c590d20"

  url "https://noteifyapp.com/download/ActiveDock.dmg"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
