cask "coscreen" do
  version "1.0.5-beta"
  sha256 "91aa7185f1851864b02f095d89cc6d947926a31a15d892eb8b65848041bd4dac"

  url "https://update.coscreen.org/CoScreen-#{version}.dmg",
      verified: "https://update.coscreen.org/"
  appcast "https://update.coscreen.org/beta-mac.yml"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://coscreen.co/"

  auto_updates true

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
