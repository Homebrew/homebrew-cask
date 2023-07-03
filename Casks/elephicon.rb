cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.5.2"
  sha256 arm:   "359768942ba1c49fea68a60cc41ac1abd685aea069e545692d8f3dbce69249bc",
         intel: "83fbdd1c39577667f15aa71805bcb4991618f813055cc208cef3053505ae217d"

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
