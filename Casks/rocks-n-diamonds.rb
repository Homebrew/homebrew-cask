cask "rocks-n-diamonds" do
  version "4.2.0.0"
  sha256 "baa74572a248190c620881a6a80f8087e525b591a4de678db88a8ec24e45a27a"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
  name "Rocks'n'Diamonds"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  app "Rocks'n'Diamonds.app"
end
