cask "coscreen" do
  version "1.6.113-beta"
  sha256 "b2cb464e8943beee12feb0df2aa013e2e1e76c21e8c57944299f42862ef66eb0"

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
