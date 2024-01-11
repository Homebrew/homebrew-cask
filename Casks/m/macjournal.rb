cask "macjournal" do
  version "7.4"
  sha256 "8dbb9e2342004a39bb045b24d75885fe70fc7136fb5e04e750e020bf29bfac47"

  url "https://danschimpf.com/macjournal/MacJournal_#{version}.zip"
  name "MacJournal"
  desc "Journaling and blogging software"
  homepage "https://danschimpf.com/"

  livecheck do
    url "https://danschimpf.com/appcasts/MacJournal#{version.major}.appcast"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "MacJournal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.danschimpf.macjournal.sfl*",
    "~/Library/Application Support/MacJournal",
    "~/Library/Caches/com.DanSchimpf.MacJournal",
    "~/Library/Preferences/com.DanSchimpf.MacJournal.plist",
    "~/Library/Saved Application State/com.DanSchimpf.MacJournal.savedState",
  ]
end
