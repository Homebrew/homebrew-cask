cask "historyhound" do
  version "2.3.7"
  sha256 "d2f7b578529fa3bf3d7b10578a6fc4ed5e3274752c510e0894fee6eb8c0acef2"

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  name "HistoryHound"
  desc "Browser history and bookmarks keyword search"
  homepage "https://www.stclairsoft.com/HistoryHound/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "HistoryHound.app"

  zap trash: [
    "~/Library/Application Support/HistoryHound",
    "~/Library/Caches/com.stclairsoft.HistoryHound",
    "~/Library/Preferences/com.stclairsoft.HistoryHound.plist",
  ]
end
