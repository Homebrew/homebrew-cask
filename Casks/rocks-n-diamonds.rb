cask "rocks-n-diamonds" do
  version "4.2.0.3"
  sha256 "58f3a88657fb1d34f0bcfba388122799bf1deb284205f96233a82c6dd59f1dfe"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
  name "Rocks'n'Diamonds"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  app "Rocks'n'Diamonds.app"
end
