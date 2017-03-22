cask 'sylo' do
  version '3.7'
  sha256 '241d986030126e234f1e2b9ff1dd527a889254030c49f529ba70157884520cd2'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '4ddb281b2cbc9fe90f498275f3923c5a8238106bcb31fc72ee6abb164186f40d'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
