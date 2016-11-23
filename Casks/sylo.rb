cask 'sylo' do
  version '3.1'
  sha256 '2f10f4a721eabacc9c964054a1a8e1ded95bb76637f933ceb783b4338e9ec500'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '3d72fe5852b8c98993fa650d971063ab4f0966629f752b8f2e73896b9191356e'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
