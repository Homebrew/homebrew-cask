cask "headset" do
  arch arm: "arm64", intel: "x64"

  version "4.1.2"
  sha256 arm:   "fa58608c4d3f4ffa2dedd07225661fe8a9f7b059391c7d2cab09c94c5016cf1b",
         intel: "5252c69b2c3bc02692b013a41d6f4c5638fe01e7dcfcacc6b55908441b1176e7"

  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}-#{arch}.dmg",
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
