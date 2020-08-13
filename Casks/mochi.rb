cask "mochi" do
  version "1.6.4"
  sha256 "c4f03fe6bd987c5fed952967c6065778b217d6fcbdec2fcbbad1f1f8c524bd15"

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast "https://mochi.cards/"
  name "Mochi"
  homepage "https://mochi.cards/"

  app "Mochi.app"
end
