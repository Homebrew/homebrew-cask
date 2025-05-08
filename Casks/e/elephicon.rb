cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.5.2"
  sha256 arm:   "44a35160505181c78eb11706dd4c58e8600de49ceabc2061ce37a324eec6784b",
         intel: "6d762ef1692171a7c3a176bc671e32e845f3be3c95c077c9f2e9aca5c4f5b510"

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
