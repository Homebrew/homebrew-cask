cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "1.10.7"
  sha256 arm:   "668ff45ff505ab57e8a2dbe9dc2291050ad128d6f2a60b8f7d921046e68079cb",
         intel: "3b7b0f0efb7e22b63b52b89b9f8b08bf4bd36ce47d7d5fb2dfee3cbfa1a35c63"

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
