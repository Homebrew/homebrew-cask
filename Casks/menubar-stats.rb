cask "menubar-stats" do
  version "3.6"
  sha256 "3ec8c47155e39a91a58e8f3446ee0272b5a23f2fc4c0bc5913b5184e8f371612"

  url "https://seense.com/menubarstats/updateapp/mbs.zip"
  appcast "https://www.seense.com/menubarstats/updateapp/appcast.xml"
  name "MenuBar Stats"
  desc "System monitor with temperature & fans plugins"
  homepage "https://seense.com/menubarstats/"

  depends_on macos: ">= :sierra"

  app "MenuBar Stats.app"
end
