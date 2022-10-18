cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.1.4"
  sha256 arm:   "5ede4a09de592fc59d68904891acc3e03743a14b59f2e23624ab9ca40656ca13",
         intel: "9dde2d8b944a98336bd77b6f7b8c2d48c1bef5ffb0b79baf55dd5c4edd4f7742"

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
