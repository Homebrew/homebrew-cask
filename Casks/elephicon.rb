cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "525ae65ad2edd9c7d0ee1f8d669c0bdd70d5d452fb3740362d86469ba8896ef6",
         intel: "6ed93b43197c0510f2d2c52f5743370ed274605137d907b28e3e52deb39c91f0"

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
