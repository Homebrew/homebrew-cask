cask "mtgaprotracker" do
  version "2.1.27"
  sha256 "96c47b4612fac3860c1836689ff4ada3043144ee41f3413c8c1805134f210bd7"

  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg",
      verified: "github.com/Razviar/mtgap/"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"

  zap trash: [
    "~/Library/Application Support/mtgaprotracker",
    "~/Library/Caches/com.mtgarenapro.mtgaprotracker",
    "~/Library/Caches/com.mtgarenapro.mtgaprotracker.ShipIt",
    "~/Library/Logs/MTGAproTracker",
    "~/Library/Preferences/com.mtgarenapro.mtgaprotracker.plist",
  ]
end
