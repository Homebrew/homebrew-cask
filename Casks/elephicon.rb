cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "b9f761380f32f67fbc6085bba4f41727411acc0f18c8f951387cbad003828cd2",
         intel: "907a0ed9f5cde395d3d475cb55c187446e37d689ea3f6bbbc601e97d502ac954"

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
