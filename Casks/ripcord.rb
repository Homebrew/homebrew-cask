cask "ripcord" do
  version "0.4.27"
  sha256 "933bd257341aed56dfb37ff158fdc5f3d89aee556c10dc1cbd3fa2dc65fafbd7"

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
