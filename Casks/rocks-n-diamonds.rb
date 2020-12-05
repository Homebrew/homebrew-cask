cask "rocks-n-diamonds" do
  version "4.2.0.5"
  sha256 "eb4364b840568354d2baad39b4d57019ee27c98bc662df4091011a341c002c02"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
  name "Rocks'n'Diamonds"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  app "Rocks'n'Diamonds.app"
end
