cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "dabe0bf6ec632227c2df3b9f1c710a3a1e3506b71038178c2fd3741d1580b566",
         intel: "c1d2f463422826e4456f49c41cb896f9f96ea9654089d4cff23ca0a6f9a7cf41"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true

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
