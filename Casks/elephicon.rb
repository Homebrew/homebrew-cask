cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "84e25aeba101d1236fe24e219bd1dd686de8b4bfc8e068471d1ef123ef01cdc5",
         intel: "fa8de6511080600cab5d86f11852478995f03b898ed93e382ec4d1552e9bc8d8"

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
