cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.3.6"
  sha256 arm:   "c96b0e194cef3930e295f0bf03f0e89a76a206ded5e4c4a01494afc6281fbe5b",
         intel: "ddb62454bd4d0cc2a02e283f3ee4518341d34b852f66f71413dfc6b3642b841a"

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
