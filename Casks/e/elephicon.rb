cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.8.3"
  sha256 arm:   "cfc0101b27190269017335c568e95e3ab5080b8008a6b4f5644ecbc91426bf96",
         intel: "a704bdf4fedc8b0d97ad8e3e1ecb2185c9f3b1cdbb456b2bdeea68a82d3add50"

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
