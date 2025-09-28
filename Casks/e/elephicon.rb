cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.8.3"
  sha256 arm:   "b85d9a48fbe01716e602b76f12a4cd3c346e3383a7a8e5a1e3cf579e2ba6fbe8",
         intel: "d609bb7d7f10f8340c14ac67fd5864ae0bba231855c8661ea59c66b68ed3b631"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :monterey"

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
