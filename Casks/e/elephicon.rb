cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.1.1"
  sha256 arm:   "7fe1becaad4e4c88fb5712db57529bc513017a3ca8de2ff388cbbce80bed77bc",
         intel: "9ad361abe86c5a4f64558cfadf7506f324d18ccf682c4db0d18a86bf2a552057"

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
