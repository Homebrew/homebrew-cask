cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "0b8a304808bd5be75195d176fb8192872ea0bb26b6a2ec08b1ba8275c9442714",
         intel: "4e0a9d50ce2de9fe3987846bf149a88667aa2c688b16cb256af4bd0dc39c60c2"

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
