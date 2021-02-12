cask "headset" do
  version "3.3.0"
  sha256 "6822ddc7fd5c449b6937a9cdb4189158f8723a3ed3cbb2c7796698e279043337"

  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg",
      verified: "github.com/headsetapp/headset-electron/"
  appcast "https://github.com/headsetapp/headset-electron/releases.atom"
  name "Headset"
  desc "Music player powered by YouTube and Reddit"
  homepage "https://headsetapp.co/"

  app "Headset.app"

  zap trash: [
    "~/Library/Application Support/Headset",
    "~/Library/Caches/co.headsetapp.app",
    "~/Library/Caches/co.headsetapp.app.ShipIt",
    "~/Library/Cookies/co.headsetapp.app.binarycookies",
    "~/Library/Logs/Headset",
    "~/Library/Preferences/ByHost/co.headsetapp.app.ShipIt.*.plist",
    "~/Library/Preferences/co.headsetapp.app.plist",
    "~/Library/Saved Application State/co.headsetapp.app.savedState",
  ]
end
