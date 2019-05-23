cask 'kite' do
  version '0.20190522.1'
  sha256 'd9e431be8139281a85cfee8661fad9e97a05a33fa761015548870f8d26fc5891'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
