cask 'sylo' do
  version '3.5'
  sha256 'e18335580e2a3905b383ab3c3cec28ee95a28528e9f0b8d9c0edfb9027357e90'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '4bf7981f23b254b78788617f903ef03e00ced67d3872b08b23a3a96bf11c576f'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
