cask "mtgaprotracker" do
  version "2.1.35"
  sha256 "f71552a5e97755adf705758c11147ab15b5adb145707daa5ca689da937e3ec40"

  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg",
      verified: "github.com/Razviar/mtgap/"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  deprecate! date: "2024-07-27", because: :discontinued

  app "mtgaprotracker.app"

  zap trash: [
    "~/Library/Application Support/mtgaprotracker",
    "~/Library/Caches/com.mtgarenapro.mtgaprotracker",
    "~/Library/Caches/com.mtgarenapro.mtgaprotracker.ShipIt",
    "~/Library/Logs/MTGAproTracker",
    "~/Library/Preferences/com.mtgarenapro.mtgaprotracker.plist",
  ]

  caveats do
    requires_rosetta
  end
end
