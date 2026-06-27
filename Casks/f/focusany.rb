cask "focusany" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "0bbac3d2bd16560fc4cf8fc8badb273892e242823f3d2b8aa70fae4e55aca392",
         intel: "10f6a0d2e72255bd12f1ea95e642573f9a2042c3b6a416a6fa619cd4004900cf"

  url "https://github.com/modstart-lib/focusany/releases/download/v#{version}/FocusAny-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/focusany/"
  name "FocusAny"
  desc "Open source desktop toolbox"
  homepage "https://focusany.com/"

  depends_on :macos

  app "FocusAny.app"

  zap trash: [
    "~/Library/Application Support/focusany",
    "~/Library/Preferences/FocusAny.plist",
    "~/Library/Saved Application State/FocusAny.savedState",
  ]
end
