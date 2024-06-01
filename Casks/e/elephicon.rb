cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "60a6142f0a8f8f911cde1a09baa7b47c9ffd954e19d3bdff71bd209fe7e87c6e",
         intel: "f17eb82a984c21d2f649087b8865499df64a97727c773efc7400f8340dbecaa1"

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
