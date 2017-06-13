cask 'sylo' do
  version '3.9'
  sha256 'd676d6e204dd15a10eed22efde791e46819344be6cbf31dfdefb8508bdd76854'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '80bb4b95f922dc23c9218daca0f1629b7dd3845e00f4cb5a623d2b847d3ecc28'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
