cask "historyhound" do
  version "2.3.3"
  sha256 "556f8a14ceec9f50776b2c9d87c5c153c6ed4238f8a5c4671fc979a1ea710531"

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  name "HistoryHound"
  desc "Browser history and bookmarks keyword search"
  homepage "https://www.stclairsoft.com/HistoryHound/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "HistoryHound.app"

  zap trash: [
    "~/Library/Application Support/HistoryHound",
    "~/Library/Caches/com.stclairsoft.HistoryHound",
    "~/Library/Preferences/com.stclairsoft.HistoryHound.plist",
  ]
end
