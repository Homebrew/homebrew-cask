cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.8.0"
  sha256 arm:   "70daf8b25fb6003685b20b01de2709551c74df1606063fd8c7adba63e6dae00d",
         intel: "471bbcaf577949d1d55d8ed1de13719c9ec203c33e2168b4c8be9fc64da6d906"

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
