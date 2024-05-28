cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "f473fc7d0dff1fd457fbbfdcbc8f8b96a3cfa1b2a4db9c778d9e6f9cc15472e1",
         intel: "61d8dd93a0b00a2b5a6f01016dbf1d2ad40abca299fedb901e7a43a8a0036237"

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
