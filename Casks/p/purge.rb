cask "purge" do
  version "1.18.1"
  sha256 "1ee0c822739483670a36c03d07e102e112c4c146eb0d12215e8751a9b828d428"

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
            ],
            quit:      "io.getpurge.app"

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
