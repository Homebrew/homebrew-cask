cask "menubar-stats" do
  version "3.6.1,20201217"
  sha256 :no_check

  url "https://seense.com/menubarstats/updateapp/mbs.zip"
  name "MenuBar Stats"
  desc "System monitor with temperature & fans plugins"
  homepage "https://seense.com/menubarstats/"

  livecheck do
    url "https://www.seense.com/menubarstats/updateapp/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MenuBar Stats.app"
end
