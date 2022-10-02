cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.1.3"
  sha256 arm:   "683aa10a05e9fd8e87ed41d7a6d2679ad903e2af552458ebb5d7392b311f545a",
         intel: "7617e366384566b560ff49eabd302ee8cb765509ddebb76e9e78593a4c2eec63"

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
