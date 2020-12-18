cask "coscreen" do
  version "1.1.19-beta"
  sha256 "61bc4e7f1352e9fc39b8efbbd63cbf9577d30c810ce0b770e2ae716aa28c101f"

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
