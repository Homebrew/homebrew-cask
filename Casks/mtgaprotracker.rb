cask "mtgaprotracker" do
  version "2.1.12"
  sha256 "7bc18e9ef984bd8631160391a10d9f777995f509a3ff3e203247cfd7a12be1f8"

  # github.com/Razviar/mtgap was verified as official when first introduced to the cask
  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg"
  appcast "https://github.com/Razviar/mtgap/releases.atom"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"
end
