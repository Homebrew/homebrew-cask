cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.5.6"
  sha256 arm:   "54dbd3701642067e78e498ed48923a1c77236176181f1b1f0f29cc0d4dfacbce",
         intel: "b8e1110fb7f2ee1625fa8dbac1972728c101c1365b19f174e0636bc205ed2b37"

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
