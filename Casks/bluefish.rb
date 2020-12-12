cask "bluefish" do
  version "2.2.12"
  sha256 "85fc22336e929ccae9010d80df76dc1426296912f57dc622abbd345a0a24bd47"

  # bennewitz.com/ was verified as official when first introduced to the cask
  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg"
  appcast "https://www.bennewitz.com/bluefish/stable/binaries/macosx/"
  name "Bluefish"
  homepage "http://bluefish.openoffice.nl/index.html"

  app "Bluefish.app"
end
