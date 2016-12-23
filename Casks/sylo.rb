cask 'sylo' do
  version '3.3'
  sha256 '52435147b11d80314057e176f63d45e07524368d9763bbfaf62c95338bd2b97b'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: 'f8dbf8e3ac57fe094a8f2d3b154c05d1a20030dd234e5cf2e770b84c60ac80ad'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
