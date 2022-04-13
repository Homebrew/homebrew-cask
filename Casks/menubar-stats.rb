cask "menubar-stats" do
  version "3.8.5,20211201"
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
  depends_on macos: ">= :mojave"

  app "MenuBar Stats.app"

  zap trash: [
    "~/Library/Application Scripts/3EYN7PPTPF.com.fabriceleyne.menubarstats",
    "~/Library/Application Scripts/com.fabriceleyne.menubarstats*",
    "~/Library/Containers/com.fabriceleyne.menubarstats*",
    "~/Library/Group Containers/3EYN7PPTPF.com.fabriceleyne/com.fabriceleyne.menubarstats",
    "~/Library/Group Containers/3EYN7PPTPF.com.fabriceleyne.menubarstats",
  ]
end
