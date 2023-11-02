cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.7.2"
  sha256 arm:   "1d4ad0d21936fda675cc52c362c86969a0015bab5c17eb3cfc79f703c40b69b4",
         intel: "bd90c7c873c4a26837cc5827901d61f28683def5b2e648f088cfa747fb703b17"

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
