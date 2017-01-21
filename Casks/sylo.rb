cask 'sylo' do
  version '3.3'
  sha256 '30c41498e8737a9911ab129d1ef7e883ae8ccd1d09147f4b79733373f2421721'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: 'f8dbf8e3ac57fe094a8f2d3b154c05d1a20030dd234e5cf2e770b84c60ac80ad'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
