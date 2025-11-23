cask "focusany" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "2bd3213064b3dc021cd3f69b042b896ce2537abfebab3a1c84c8554d04e389ca",
         intel: "894f5cad795e8ffeb4d03e0be719de4ccab01e6035615fd2ed337798371dc80d"

  url "https://github.com/modstart-lib/focusany/releases/download/v#{version}/FocusAny-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/focusany/"
  name "FocusAny"
  desc "Open source desktop toolbox"
  homepage "https://focusany.com/"

  app "FocusAny.app"

  zap trash: [
    "~/Library/Application Support/focusany",
    "~/Library/Preferences/FocusAny.plist",
    "~/Library/Saved Application State/FocusAny.savedState",
  ]
end
