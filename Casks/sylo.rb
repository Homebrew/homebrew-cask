cask 'sylo' do
  version '3.2'
  sha256 '2f10f4a721eabacc9c964054a1a8e1ded95bb76637f933ceb783b4338e9ec500'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: 'd80ccb11e06dbd55d1f167958e79dcc43faa7106d41879d739517ede1ba8788a'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
