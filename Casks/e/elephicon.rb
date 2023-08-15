cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "4f8a023057c72ac1da3856fbd70478f2c73418a2a5febd4debfd0e8e5fd3726b",
         intel: "cb802664320e6a9995cd9bc491f8892a4bd782344ecc085475b75e1440d503ab"

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
