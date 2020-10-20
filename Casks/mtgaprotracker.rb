cask "mtgaprotracker" do
  version "2.1.11"
  sha256 "d4a0808320e38ba3c5cf407874efc1970103d3cd3369414b4dc386adeb12962e"

  # github.com/Razviar/mtgap was verified as official when first introduced to the cask
  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg"
  appcast "https://github.com/Razviar/mtgap/releases.atom"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"
end
