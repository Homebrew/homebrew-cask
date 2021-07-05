cask "macjournal" do
  version "7.2.1,337"
  sha256 "f25d4cb7f36f0784fe61cea3ce0ae19e8fe5abc39e4a2436825731bc8631eab6"

  url "https://danschimpf.com/macjournal/MacJournal_#{version.before_comma}.zip"
  name "MacJournal"
  desc "Journaling and blogging software"
  homepage "https://danschimpf.com/"

  livecheck do
    url "https://danschimpf.com/appcasts/MacJournal#{version.major}.appcast"
    strategy :sparkle
  end

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
