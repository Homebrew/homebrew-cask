cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "63d3561a06cc060986b8324629de631c7f9dd92122d6069ad35f2a602c41ef0b",
         intel: "102005c2016e79aee9e1faf90b5668f721c07c425afe9333e2da4b1d6121fa85"

  url "https://github.com/modstart-lib/linkandroid/releases/download/v#{version}/LinkAndroid-#{version}-mac-#{arch}.dmg"
  name "LinkAndroid"
  desc "Open source android assistant"
  homepage "https://linkandroid.com/"

  depends_on :macos

  app "LinkAndroid.app"

  zap trash: [
    "~/Library/Application Support/linkandroid",
    "~/Library/Preferences/LinkAndroid.plist",
    "~/Library/Saved Application State/LinkAndroid.savedState",
  ]
end
