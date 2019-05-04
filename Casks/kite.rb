cask 'kite' do
  version '0.20190501.0'
  sha256 'bdc79bdcf4277ab4e726292828a9c081490859d31f8707746a4aef9433ddf6cc'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
