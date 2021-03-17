cask "historyhound" do
  version "2.3.1"
  sha256 "bdd7ddf16fc6e32225279a6b426e1692f698aa8fb9017a9b9328eb95efaac0b8"

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
