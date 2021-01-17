cask "ripcord" do
  version "0.4.28"
  sha256 "98b2a5071ac4e64b03ac26bb4d1496d1764b4aa73894fcb67ecb1d911853e005"

  url "https://cancel.fm/dl/Ripcord_Mac_#{version}.zip"
  appcast "https://cancel.fm/ripcord/updates/v1"
  name "Ripcord"
  desc "Desktop chat client for Slack (and Discord)"
  homepage "https://cancel.fm/ripcord/"

  depends_on macos: ">= :sierra"

  app "Ripcord.app"

  zap trash: [
    "~/Library/Application Support/Ripcord",
    "~/Library/Preferences/com.cancelfm.Ripcord.plist",
    "~/Library/Saved Application State/com.cancelfm.Ripcord.savedState",
  ]
end
