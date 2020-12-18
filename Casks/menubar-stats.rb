cask "menubar-stats" do
  version "3.6,20201129"
  sha256 :no_check

  url "https://seense.com/menubarstats/updateapp/mbs.zip"
  appcast "https://www.seense.com/menubarstats/updateapp/appcast.xml"
  name "MenuBar Stats"
  desc "System monitor with temperature & fans plugins"
  homepage "https://seense.com/menubarstats/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MenuBar Stats.app"
end
