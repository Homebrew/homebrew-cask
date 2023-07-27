cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.5.5"
  sha256 arm:   "137978726502a773798c66b5299babf900b08ae32d602fd8366432cf618111f3",
         intel: "0aba2d0ecbae644bf8f33883db411c376f3416f414d07b36ecd9b1462d78629b"

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
