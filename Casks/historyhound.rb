cask "historyhound" do
  version "2.3.2,8864"
  sha256 "e06cb23988390ddf4043b113fa8d6cbf83d8689b78cf6be37f7d83b8514aaf25"

  url "https://www.stclairsoft.com/download/HistoryHound-#{version.csv.first}.dmg"
  name "HistoryHound"
  desc "Browser history and bookmarks keyword search"
  homepage "https://www.stclairsoft.com/HistoryHound/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH"
    strategy :sparkle
  end

  auto_updates true

  app "HistoryHound.app"

  zap trash: [
    "~/Library/Application Support/HistoryHound",
    "~/Library/Caches/com.stclairsoft.HistoryHound",
    "~/Library/Preferences/com.stclairsoft.HistoryHound.plist",
  ]
end
