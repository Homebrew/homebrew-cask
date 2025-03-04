cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "13b7c5d873833c76d7c64f722e6e9fe630284992e21c3c69b3eb6229f9d996c1",
         intel: "83d9a08027dacf96adedcdb48487672b7f9d06f1f635ec49d8498b6af042754c"

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
