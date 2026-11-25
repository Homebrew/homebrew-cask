cask "focusany" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "cc666ff27215a3a3dd4dd655375c3e781fbd08aa8cf78dd04f79dabca9a65ee1",
         intel: "c3945e6279adf6155e2e2f39b716dd3c05c91e361070beefea7b35a102231a56"

  url "https://github.com/modstart-lib/focusany/releases/download/v#{version}/FocusAny-#{version}-mac-#{arch}.dmg"
  name "FocusAny"
  desc "Open source desktop toolbox"
  homepage "https://focusany.com/"

  depends_on :macos

  app "FocusAny.app"

  uninstall quit: "com.focusany.app"

  zap trash: [
    "~/.focusany",
    "~/Library/Application Support/focusany",
    "~/Library/Preferences/com.focusany.app.plist",
    "~/Library/Preferences/FocusAny.plist",
    "~/Library/Saved Application State/FocusAny.savedState",
  ]
end
