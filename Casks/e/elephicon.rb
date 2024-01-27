cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.8.4"
  sha256 arm:   "98ca82ea1ee11c3a309eeb6b4e6852200f933d9fc08b7836d8b7f78996707619",
         intel: "d4ee926a0140410f8e4c81ec7b58ab2db56f1018f909a257efb030e44fafd24c"

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
