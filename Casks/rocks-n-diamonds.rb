cask "rocks-n-diamonds" do
  version "4.2.0.2"
  sha256 "2191815e7885e8cba9f3523beca5b419cc0aa1a5983c77b9e9342d5a720b5ccf"

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/"
  name "Rocks'n'Diamonds"
  homepage "https://www.artsoft.org/rocksndiamonds/"

  app "Rocks'n'Diamonds.app"
end
