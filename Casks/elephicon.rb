cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "52676caf8df0dcc2b94131132d3d30edba87d95388e48e6980074745647182a4",
         intel: "ad625996a5d00dd179f1d102f2935e4b0558f3df3fc0b26b87a43a8d5c90f8f2"

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
