cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "563c289597d5565f6388a6cca218e17f786c08ca9f48a98f258f6237a1486ad1",
         intel: "45ab47e74d902503aa287bd78b98d016adaabd05fca39a82d57f361db2f8078b"

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
