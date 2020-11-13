cask "menubar-stats" do
  version "3.5"
  sha256 "f04ddc2dea949ebbf940ad836b2c7b2d65397610c0625ac5a34dcb0745654766"

  url "https://seense.com/menubarstats/updateapp/mbs.zip"
  appcast "https://www.seense.com/menubarstats/updateapp/appcast.xml"
  name "MenuBar Stats"
  desc "System monitor with temperature & fans plugins"
  homepage "https://seense.com/menubarstats/"

  depends_on macos: ">= :sierra"

  app "MenuBar Stats.app"
end
