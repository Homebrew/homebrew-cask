cask "macjournal" do
  version "7.3.1,342"
  sha256 "00cb357e4c3a57847203e74e116e95ff2517fe5d3ba76b02586d439135edfe05"

  url "https://danschimpf.com/macjournal/MacJournal_#{version.csv.first}.zip"
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
