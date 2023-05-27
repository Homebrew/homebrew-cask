cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.4.4"
  sha256 arm:   "6ed696bbfaa3c4bf2b0bbed52129b068f5137f84bb4af3512184d2dcc85e2f2b",
         intel: "0152172177cb8ce0c81b8ef19d0b181f8f89c4246703c72d5513afc013f9f8fb"

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
