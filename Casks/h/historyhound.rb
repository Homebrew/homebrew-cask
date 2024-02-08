cask "historyhound" do
  version "2.3.5"
  sha256 "1a3f5199c7f822949a784dd53e55256d15910d09dbda900baf64032ec3a6ea56"

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  name "HistoryHound"
  desc "Browser history and bookmarks keyword search"
  homepage "https://www.stclairsoft.com/HistoryHound/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "HistoryHound.app"

  zap trash: [
    "~/Library/Application Support/HistoryHound",
    "~/Library/Caches/com.stclairsoft.HistoryHound",
    "~/Library/Preferences/com.stclairsoft.HistoryHound.plist",
  ]
end
