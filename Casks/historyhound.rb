cask "historyhound" do
  version "2.3"
  sha256 "0bbcef739ca515994c0eaa8eab99d01ff49a0a2682056a4ba788721566e395c4"

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH"
  name "HistoryHound"
  homepage "https://www.stclairsoft.com/HistoryHound/"

  auto_updates true

  app "HistoryHound.app"

  zap trash: [
    "~/Library/Application Support/HistoryHound",
    "~/Library/Caches/com.stclairsoft.HistoryHound",
    "~/Library/Preferences/com.stclairsoft.HistoryHound.plist",
  ]
end
