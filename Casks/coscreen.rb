cask "coscreen" do
  version "1.5.30-beta"
  sha256 "5d9b30679c974d199b5dbbce77121720dc4c5452edefa941092053d85bb5077f"

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
