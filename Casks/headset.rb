cask "headset" do
  version "3.3.2"
  sha256 "8d3ad7720ad3da676af59d1bd651fd260af61aeb738c8e422076700fa8660791"

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
