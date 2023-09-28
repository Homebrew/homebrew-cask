cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.6.4"
  sha256 arm:   "897dcd85b184333c5527eb25f153bdbb6586b61b0e83099d85faf023e9bf034f",
         intel: "0edeeb5facc635b6b0165875bb5536a0d61d34765d2d45a871a173355f3c2a8b"

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
