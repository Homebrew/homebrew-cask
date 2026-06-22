cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "00fe70ce155612b18d1d7bbdb3321a141410bf7c2f7386f933d5203bc1778a01",
         intel: "bbc1e4cb3785361dfb14659edcb27d8113afb51db11d430f51192ecb6e84b0e5"

  url "https://github.com/modstart-lib/linkandroid/releases/download/v#{version}/LinkAndroid-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/linkandroid/"
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
