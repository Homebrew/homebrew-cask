cask "mtgaprotracker" do
  version "2.1.13"
  sha256 "40a43ea8243010b8f2bd728466a5df954714d1183a5d4f4714ecf9907c0fe65a"

  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg",
      verified: "github.com/Razviar/mtgap/"
  appcast "https://github.com/Razviar/mtgap/releases.atom"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"
end
