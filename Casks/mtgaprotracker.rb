cask "mtgaprotracker" do
  version "2.1.16"
  sha256 "bbf0772321dd50af103fd7734ed3a5d88a044c97478e4e4288e3f696c9ff2253"

  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg",
      verified: "github.com/Razviar/mtgap/"
  appcast "https://github.com/Razviar/mtgap/releases.atom"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"
end
