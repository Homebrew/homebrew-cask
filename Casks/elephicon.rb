cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "ef1dbca5067e68c7479eb66fbe15309290b0cc594c609ca7dc563e9b40f87806",
         intel: "cd33350da9298964e29c7516ef71c2f685acae390e6fc517d5fae80b5150385f"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create Apple ICNS and Microsoft ICO files from PNG"
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
