cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "2eaf8c363e1c1590b59f7af6f2e53496d89e2ba74311ea73db78130b6d8beaa7",
         intel: "e821c2ec227a3510c461471ecc28c11c74cb29f600878246caceaf9e076d7520"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create Apple ICNS and Microsoft ICO files from PNG"
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
