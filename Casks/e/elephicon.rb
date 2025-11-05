cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.9.1"
  sha256 arm:   "e75b9bc357c8537cb6420c22429e9925ea79e3c2b5c6a32c9bc2e25b8f37fade",
         intel: "22fdb053f2d118a18e7e5e3fb4a320c5ff03e529b7ed2ab6b12b08211962e946"

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
