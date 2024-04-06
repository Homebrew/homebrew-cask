cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.9.3"
  sha256 arm:   "f1882a03bd256c725fc158e0918ceb190a3606d240bd8d1d9ded8ead8210d93f",
         intel: "2e5f9e820657fb78f403e6075a87ecc7c503384e7f70da1f102be06943ecdb06"

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
