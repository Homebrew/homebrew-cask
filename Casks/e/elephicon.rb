cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.8.4"
  sha256 arm:   "d9f1c33b8444f65c6312fdb676effec552374d69cbe8ca5ca7d5c0c64dfb97f6",
         intel: "4310af9aaa7c9d2815644752498e8d27b61640402b9bf566a085c8d97e7e0ded"

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
