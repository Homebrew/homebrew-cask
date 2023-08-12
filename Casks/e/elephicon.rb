cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.5.7"
  sha256 arm:   "3b023c23227ffc443462ef858eee43d21ae4b9257db425ae6f5198f97707a03c",
         intel: "61dc22ea82fbb26b024eb1dabd65535fb31ca9d2f3d890e56bde06bef4e88671"

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
