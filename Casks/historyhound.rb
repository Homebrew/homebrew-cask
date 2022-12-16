cask "historyhound" do
  version "2.3.3,9012"
  sha256 "02cb0df03d19442355e57df27f36a9dba2be02d7b02059b7ddd608c31f741a38"

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
