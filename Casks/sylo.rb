cask 'sylo' do
  version '4.0'
  sha256 'b55b79007336fd825feed77f8c2894aa0fa70479c49f7e38a971a7aec1081ebe'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '97abeb26c0bc10ce27ab5944916747fdd51d64fc242d7d21af0842adac4918c7'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
