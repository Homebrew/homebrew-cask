cask "historyhound" do
  version "2.3.4"
  sha256 "a4499d1ff810bc72e58c1d1134379ef8a48a96e20bf945626ee26ef2ce073327"

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
