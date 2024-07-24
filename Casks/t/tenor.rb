cask "tenor" do
  version "2.0.5"
  sha256 :no_check

  url "https://media.tenor.com/mac/bin/GIFforMac.dmg"
  name "Tenor"
  desc "Send, share and save gifs from the menu bar"
  homepage "https://tenor.com/mac"

  disable! date: "2024-07-20", because: :moved_to_mas

  depends_on macos: ">= :el_capitan"

  app "Tenor.app"

  uninstall quit: "com.riffsy.GIF-for-Mac"

  zap trash: [
    "~/Library/Application Support/com.riffsy.GIF-for-Mac",
    "~/Library/Caches/com.crashlytics.data/com.riffsy.GIF-for-Mac",
    "~/Library/Caches/tenor-*",
    "~/Library/HTTPStorages/com.tenorshare.ReiBoot*",
    "~/Library/Preferences/com.riffsy.GIF-for-Mac.plist",
  ]
end
