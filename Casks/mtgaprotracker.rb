cask "mtgaprotracker" do
  version "2.1.24"
  sha256 "c22e28f4b5135011bb6c6440ab0e3a04e1180895ff1d00cf965d3d5c74821764"

  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg",
      verified: "github.com/Razviar/mtgap/"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"
end
