cask "mtgaprotracker" do
  version "2.1.22"
  sha256 "d9b20acb50ada944048d8f17f356540ea47b5d8cc1bd0904c1b5e198fd3fe741"

  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg",
      verified: "github.com/Razviar/mtgap/"
  appcast "https://github.com/Razviar/mtgap/releases.atom"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"
end
