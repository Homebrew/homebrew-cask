cask "purge" do
  version "1.16.0"
  sha256 "6124a301ac342f1d8db2a91195e8764c9f783403b9f38ce7f7a637b7b699ac7a"

  url "https://github.com/jithin-sabu/purge-app/releases/download/v#{version}/Purgev#{version}.dmg"
  name "Purge"
  desc "Clears caches and junk files by moving them to the Trash"
  homepage "https://purgemac.com/"

  auto_updates true
  depends_on macos: :ventura

  app "Purge.app"

  uninstall launchctl: [
    "io.getpurge.helper",
    "io.getpurge.watch",
  ]

  zap trash: [
    "~/Library/Application Support/io.getpurge.app",
    "~/Library/Application Support/Purge",
    "~/Library/Caches/io.getpurge.app",
    "~/Library/HTTPStorages/io.getpurge.app",
    "~/Library/HTTPStorages/io.getpurge.app.binarycookies",
    "~/Library/Preferences/io.getpurge.app.intents.plist",
    "~/Library/Preferences/io.getpurge.app.plist",
    "~/Library/Saved Application State/io.getpurge.app.savedState",
  ]
end
