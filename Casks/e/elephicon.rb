cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.8.5"
  sha256 arm:   "7ed465a0e4456559f291b8471a33fa412f5605ba4bcfbb05b6a3d89b96dc5161",
         intel: "b57ca1615ad2edd0cd2dda1a60e7768bb4e52493c7f741582349af6e7c7e1c89"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :monterey"

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
