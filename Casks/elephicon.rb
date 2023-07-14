cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.5.3"
  sha256 arm:   "92d26546a5545addedcc16305222cf570b688af62235b34f8d2404897e8d981f",
         intel: "58d2cbbf7b2b24904a89c51d09ce6d18516d2618544e18148eefb5da9220cdb3"

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
