cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.7.3"
  sha256 arm:   "416d6e93fda630bec4e4b991c1f522c2cb9033dd38ded49eba40b00eda34ea83",
         intel: "4978b1ad89b3d2a9eb13a4c092a6263cea543dbbe8027a6472c4d10a91d43b50"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :big_sur"

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
