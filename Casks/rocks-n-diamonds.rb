cask "rocks-n-diamonds" do
  version "4.2.0.1"
  sha256 "316b6a579eee703b178abff9d2f6fc5e0796d79a9afcb2d4be9744f2dfa94d4b"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
  name "Rocks'n'Diamonds"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  app "Rocks'n'Diamonds.app"
end
