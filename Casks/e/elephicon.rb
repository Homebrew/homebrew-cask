cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.1.2"
  sha256 arm:   "8b1f145937749fa88fae989f38e38cc1aaf09c6647fd0551a30780b63d79922a",
         intel: "00876abc75c7230aa132772602218ee09b396dba70fa4e3b11c84040d11040f2"

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
