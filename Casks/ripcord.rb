cask "ripcord" do
  version "0.4.26"
  sha256 "6d76e1ef7589df8d4b3816c8ee77701e03460f7edaa47717abb8ecb84999b6c8"

  url "https://cancel.fm/dl/Ripcord_Mac_#{version}.zip"
  appcast "https://cancel.fm/ripcord/updates/v1"
  name "Ripcord"
  homepage "https://cancel.fm/ripcord/"

  depends_on macos: ">= :sierra"

  app "Ripcord.app"

  zap trash: [
    "~/Library/Application Support/Ripcord",
    "~/Library/Preferences/com.cancelfm.Ripcord.plist",
    "~/Library/Saved Application State/com.cancelfm.Ripcord.savedState",
  ]
end
