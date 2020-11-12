cask "rocks-n-diamonds" do
  version "4.2.0.4"
  sha256 "4075b5a67b6dcc2d3afe385b8b5a1610a0472acfc51a8b4f4a7ace735775bd81"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
  name "Rocks'n'Diamonds"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  app "Rocks'n'Diamonds.app"
end
