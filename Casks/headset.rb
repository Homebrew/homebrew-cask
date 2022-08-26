cask "headset" do
  arch arm: "arm64", intel: "x64"

  version "4.2.1"
  sha256 arm:   "63c6b9b45e7de083eee9267546b5695648d70b088da3488cffa0ca5897691d61",
         intel: "1fa8274db4738f363b741df1dc5004ca87b947e81d3732eefbea5bce39c6ce57"

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
