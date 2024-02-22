cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.9.1"
  sha256 arm:   "2ea2e09792c799d6caef39ae7f3b00a6fb7fcaca0820ccec46bf04754f1c5932",
         intel: "eb486e8f4f0a2658ca1d4f076ccbebf771e901cedda9dd22a09d887e265d11db"

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
