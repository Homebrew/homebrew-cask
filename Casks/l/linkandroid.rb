cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "4b13fec736d624efcfa5da90ec2b42339206ab6331ac6b6f8e4c821b7c7ebada",
         intel: "d64e82724c9e79e1f176676ec571e268a50cf3f4ca17c29e1d582f88a4170853"

  url "https://github.com/modstart-lib/linkandroid/releases/download/v#{version}/LinkAndroid-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/linkandroid/"
  name "LinkAndroid"
  desc "Open source android assistant"
  homepage "https://linkandroid.com/"

  app "LinkAndroid.app"

  zap trash: [
    "~/Library/Application Support/linkandroid",
    "~/Library/Preferences/LinkAndroid.plist",
    "~/Library/Saved Application State/LinkAndroid.savedState",
  ]
end
