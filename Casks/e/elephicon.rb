cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.5.5"
  sha256 arm:   "b994bf11a8708312ee5d4f8ebd3973bc77407e0781b27db5e3371decdb86d180",
         intel: "2271215699f80a105d7ff54386efb7a91c1ae2a39ea9e1d7c7c0df2715115d7c"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :big_sur"

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
