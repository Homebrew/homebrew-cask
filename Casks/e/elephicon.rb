cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "b183b3dea2ebd3c6558387ecc623a288f8186f3544bc529aa6d4fa49e42a4674",
         intel: "ad6f853effd32343aee4bee0efc5e0f36c9d1ad141619d64aac146968b636159"

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
