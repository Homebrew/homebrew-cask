cask 'sylo' do
  version '3.0'
  sha256 '8ae73bd3b11c681443c903557d11812b649509ea265ce795bff68b56820274a8'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '6ee1ec375c4e7777ea26a20318c1907699ebc9b184d5f70c36de421ae785dadb'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
