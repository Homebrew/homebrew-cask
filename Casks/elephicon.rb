cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "1435293426d1a95f2d6d1e4db4a74cca44ab476ac92b1e7ee5f2fa793e2c5792",
         intel: "09b88a4354537b9fc11102fbc48b7965c0283f387092383930e3a63f7360cf4c"

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
