cask "rocks-n-diamonds" do
  version "4.2.1.0"
  sha256 "896a2b5f4f14632d46b4afcfb0788c2089eb9f4507a3135cdfba524e214b7733"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
  name "Rocks'n'Diamonds"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  app "Rocks'n'Diamonds.app"
end
