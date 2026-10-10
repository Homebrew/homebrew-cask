cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "3d83dfdc328a13ee0e587c238333483458f0478ac1ba6b0f68a77d6841eec9d6",
         intel: "7e5c2860e3cf3dbad690dd7198f94ab44b90cc3540cac4c720e863b176a27236"

  url "https://github.com/modstart-lib/linkandroid/releases/download/v#{version}/LinkAndroid-#{version}-mac-#{arch}.dmg"
  name "LinkAndroid"
  desc "Open source android assistant"
  homepage "https://linkandroid.com/"

  depends_on :macos

  app "LinkAndroid.app"

  uninstall quit: "LinkAndroid"

  zap trash: [
    "~/Library/Application Support/linkandroid",
    "~/Library/Preferences/LinkAndroid.plist",
    "~/Library/Saved Application State/LinkAndroid.savedState",
  ]
end
