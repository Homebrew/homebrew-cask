cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "764a1790206ae7d8190332e5d487bac357885de1f6d62e14dc864becf2b140a3",
         intel: "14c332c52f2cf0b51d34840556951b96f567783f43a83e3d479442561d53ff4f"

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
