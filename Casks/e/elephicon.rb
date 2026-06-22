cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "bc06d6cf3214a01bea666d5764cee377b278f3ff8235139678ed8e34992e2031",
         intel: "0f7a48810ebdbf815d825eb26faf4c69b2c366a7763bfd2b1f8e9559e36df36d"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: :monterey

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
