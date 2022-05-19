cask "headset" do
  version "4.1.0"
  sha256 "942333e9735351fa05f7296c3196963e9bb9916d3905a6488a4e62a669b35d55"

  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg",
      verified: "github.com/headsetapp/headset-electron/"
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
