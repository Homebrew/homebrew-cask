cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.7.3"
  sha256 arm:   "b10d433c06a3dc3d0a5fc098560986b9837ab427faf0085f8835fba1674755ea",
         intel: "0edd9b0d548ce7d139e37d295f4391c4a54c8bffbf1922618891f17561317e60"

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
