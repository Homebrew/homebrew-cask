cask "mtgaprotracker" do
  version "2.1.10"
  sha256 "fb620da85fd36c76eaaa460d143b59d61f6967c00e1680c84911d34c08d7db99"

  # github.com/Razviar/mtgap was verified as official when first introduced to the cask
  url "https://github.com/Razviar/mtgap/releases/download/v#{version}/mtgaprotracker.dmg"
  appcast "https://github.com/Razviar/mtgap/releases.atom"
  name "MTGA Pro Tracker"
  desc "Advanced Magic: The Gathering Arena tracking tool"
  homepage "https://mtgarena.pro/mtga-pro-tracker/"

  app "mtgaprotracker.app"
end
