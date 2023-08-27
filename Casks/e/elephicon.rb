cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "6e836e024717a22e6cda22bb9c29cdc85d273524216ea61bdbe96da88b4cdafc",
         intel: "34c9211cf05d7eed12bcafb919685ebde380578f772c3b244acd02a3f3d72770"

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
