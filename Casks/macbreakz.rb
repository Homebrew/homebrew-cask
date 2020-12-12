cask "macbreakz" do
  version "5.41"
  sha256 "941d07cc1a6e0c134f01147a69456b771719ad106be8ecd65d488a2a9fc8ff5d"

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
  name "MacBreakZ"
  homepage "https://www.publicspace.net/MacBreakZ/"

  app "MacBreakZ #{version.major}.app"
end
