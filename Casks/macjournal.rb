cask "macjournal" do
  version "7.1.1"
  sha256 "dd0ac29e88d2c4f58ae7ce95dc6db2d06b694dfc9c47c7d5f52a33624999d5cb"

  url "https://danschimpf.com/macjournal/MacJournal_#{version}.zip"
  appcast "https://danschimpf.com/appcasts/MacJournal#{version.major}.appcast"
  name "MacJournal"
  desc "Journaling and blogging software"
  homepage "https://danschimpf.com/"

  depends_on macos: ">= :mojave"

  app "MacJournal.app"

  zap trash: [
    "~/Library/Application Support/MacJournal",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.danschimpf.macjournal.sfl2",
    "~/Library/Caches/com.DanSchimpf.MacJournal",
    "~/Library/Preferences/com.DanSchimpf.MacJournal.plist",
    "~/Library/Saved Application State/com.DanSchimpf.MacJournal.savedState",
  ]
end
