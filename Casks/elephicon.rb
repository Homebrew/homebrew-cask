cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.3.4"
  sha256 arm:   "46288bdc36c0f70c4a8f1547f7a1aec68da09c166123940c0dd6d3060b031efc",
         intel: "16137198bf5393bcb78131d779d807b855f0d5452f8d2d29673174d7df58a6d6"

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
