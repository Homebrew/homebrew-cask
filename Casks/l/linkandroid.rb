cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "4b4d1c867d28abeba382a19ba9ede179b6e31953e5f4b0fd6a1ebc91eef0e21b",
         intel: "c1369c9989052e59e82ca57b4e285a8096116bb8d5f2943af78757a7862a96f8"

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
