cask 'masscode' do
  version '1.2.0'
  sha256 'eb2b26b44eba15fa735d8dbbac6e5ca8838766f471ccd4ef4d3685766b43a4b4'

  # github.com/antonreshetov/massCode was verified as official when first introduced to the cask
  url "https://github.com/antonreshetov/massCode/releases/download/v#{version}/massCode-#{version}.dmg"
  appcast 'https://github.com/antonreshetov/massCode/releases.atom'
  name 'massCode'
  homepage 'https://masscode.io/'

  app 'massCode.app'
end
