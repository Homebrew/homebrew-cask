cask "linkandroid" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "b821be2a73ecdc205bebe86e2fe1c327a0d8db95a720786a1b4618b04ecbd84d",
         intel: "04b9cadbd28ff0dc610c3ecfcc1dd29aac8a2fca8bc58df362e1223f545898e6"

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
