cask "coscreen" do
  version "1.7.49-beta"
  sha256 "052d8c34ad72f30f3aab512a6b35977fb9cd181e46ab83ddac0d5d2a0e0ef316"

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
