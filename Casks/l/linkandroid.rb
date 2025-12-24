cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "10d158d341ab666259a7235b52e382dfe4529d744c0641d418f69afba74903d4",
         intel: "9a530d3d26f93b55a4e9a55b941ce12632407aa5270939a187380bec82d4a0b4"

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
