cask "bluefish" do
  version "2.2.11"
  sha256 "c28ba47d9fbc29e185879ce96f4f8ee9a88f0fb903dbc49bf7477c1ac0c373ac"

  # bennewitz.com/ was verified as official when first introduced to the cask
  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg"
  appcast "https://www.bennewitz.com/bluefish/stable/binaries/macosx/"
  name "Bluefish"
  homepage "http://bluefish.openoffice.nl/index.html"

  app "Bluefish.app"
end
