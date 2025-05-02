cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.5.1"
  sha256 arm:   "bf82d43a60484aa74c1cf6c8436b60e31eb1ee325a3aec18d1e043eb15c37870",
         intel: "cbebfe8f4b4e4379228c85a7d3d9566123d54adf61994afc09251c209a9b67c7"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :big_sur"

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
