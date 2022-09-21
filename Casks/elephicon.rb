cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "1.10.8"
  sha256 arm:   "91d5b86f1671fd8576c4368830deb95fe1fe6ae0646f17b44b6b527b268d8614",
         intel: "5a29105e13a9fbd36d2dcb19db89e02c72b3693be8bb5087c8a96b0cb938e552"

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
