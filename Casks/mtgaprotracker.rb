cask "mtgaprotracker" do
  version "2.1.14"
  sha256 "00ebd55ef18f92a44760ccff3548aa145d4152027a66cb06b0ff9bf55fbc8653"

  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg",
      verified: "github.com/Razviar/mtgap/"
  appcast "https://github.com/Razviar/mtgap/releases.atom"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"
end
