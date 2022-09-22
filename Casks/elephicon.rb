cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "aed6e00d6f2c9b2c5af5632feb6b1da6f942a3b8e6de7ff3a1226d198fa4bb45",
         intel: "d470bcf3b547bd6f011283fef77eb3dafd5cf03a2d7e850cf938c541b4f1e052"

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
