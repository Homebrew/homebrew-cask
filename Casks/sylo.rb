cask 'sylo' do
  version '3.3'
  sha256 '30c41498e8737a9911ab129d1ef7e883ae8ccd1d09147f4b79733373f2421721'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '52fd6467a13ad3526ad4d49b2ca8d9bf2641d0e39b556ef28bafcfed3f2d9568'
  name 'Sylo'
  homepage 'https://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
