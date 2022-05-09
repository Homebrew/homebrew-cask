cask "headset" do
  version "4.0.0"
  sha256 "dc4a34e69035cd7145e1925bd8e0527b64976bcdf8decdee9db88c4ef822180f"

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
