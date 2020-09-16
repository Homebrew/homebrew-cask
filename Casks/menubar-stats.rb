cask "menubar-stats" do
  version "3.4"
  sha256 "0aef6819ee0cf4304e78f634f1c319b310206e068f12e8929e3498a57e9a33ff"

  url "https://seense.com/menubarstats/updateapp/mbs.zip"
  appcast "https://www.seense.com/menubarstats/updateapp/appcast.xml"
  name "MenuBar Stats"
  desc "System monitor with temperature & fans plugins"
  homepage "https://seense.com/menubarstats/"

  depends_on macos: ">= :sierra"

  app "MenuBar Stats.app"
end
