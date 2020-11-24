cask "menubar-stats" do
  version "3.5.2"
  sha256 "4c010d4c12c71e7b2a4e040adb9a9a20bb40f87e12533d1244620dd46148f472"

  url "https://seense.com/menubarstats/updateapp/mbs.zip"
  appcast "https://www.seense.com/menubarstats/updateapp/appcast.xml"
  name "MenuBar Stats"
  desc "System monitor with temperature & fans plugins"
  homepage "https://seense.com/menubarstats/"

  depends_on macos: ">= :sierra"

  app "MenuBar Stats.app"
end
