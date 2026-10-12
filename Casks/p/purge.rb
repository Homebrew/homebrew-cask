cask "purge" do
  version "1.8.2"
  sha256 "9e1926256f6c0d186a69251fb53fd0caa27a9d8c1c4093f54194649d541899dd"

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
