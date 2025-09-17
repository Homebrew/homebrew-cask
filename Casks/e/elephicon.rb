cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.8.2"
  sha256 arm:   "4399c20a42fa402be839e454adca7425fbbfd5d659685d080d914a6efc69de56",
         intel: "4d32f53f4fd34c33274d4ea22d3e98c8d0a9c516abeeae528ef69a7d64051711"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Elephicon.app"

  zap trash: [
    "~/Library/Application Support/Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon.ShipIt",
    "~/Library/Logs/Elephicon",
    "~/Library/Preferences/jp.wassabie64.Elephicon.plist",
    "~/Library/Saved Application State/jp.wassabie64.Elephicon.savedState",
  ]
end
