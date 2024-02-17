cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.8.6"
  sha256 arm:   "bead3ab1d7e060d033badcc1f46f9fc89823fbbd64a550f56371e8617cf92bae",
         intel: "ea00537ded0d53f68bd04152a472503506c26089e9a1564340ebae883e32d726"

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
