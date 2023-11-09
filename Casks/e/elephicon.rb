cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.7.4"
  sha256 arm:   "2252d515315b7ff8442312c1bd79a34782423f24220e33711dba6f8696bc9937",
         intel: "460da17a67daad261c0a24e5b89483e4560353871374f2ef8e9e4fa95aa2a8d7"

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
