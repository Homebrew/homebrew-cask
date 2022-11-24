cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.1.6"
  sha256 arm:   "93f5dc17361f7ec8f8ea13be0594b60dc435224809ed277973aaf8d9246c4c12",
         intel: "9129d61030b2069a6b928f010c0eddc38af6bda95f5c305252cbcd8a36cc38f7"

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
