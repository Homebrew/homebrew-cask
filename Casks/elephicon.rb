cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "a4a9196676b1ef272dd0fa7d6d0203f71ed37983048fc1a844ffb5e9d4a81e30",
         intel: "80d80ff7c612af92b7169eda279ad7c72d7826da12fc6b2cccf0d807f554e23c"

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
