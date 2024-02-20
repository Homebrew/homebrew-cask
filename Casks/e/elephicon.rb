cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "34e789c4f8214cd2c8f1d35ede73e03497b6ae87ff4b610c316f8525bafa94c4",
         intel: "1eb6770eaf8d69f74ebeecc040b5907c08b0b7dbac4d9dec55bb679e22bda070"

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
