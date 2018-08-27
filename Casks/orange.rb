cask 'orange' do
  version '3.8.0'
  sha256 '89f6a38ba8f29f37381207a91b8803a02bf43b77330939f454ddb98fca4760fc'

  url "http://orange.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
