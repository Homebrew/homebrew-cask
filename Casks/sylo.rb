cask 'sylo' do
  version '3.6'
  sha256 'e64d30c961568b6113df63857710527eeae8cc9bb032afff139606da9847f4f4'

  # s3-us-west-2.amazonaws.com/unision was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/unision/Sylo.dmg'
  appcast 'http://admin.unisionmusic.com/sylo/update.xml',
          checkpoint: '79b1a897a6fb230ffe8da31b7eb90c457ead5130c4d9919cd44df08dacfd90c0'
  name 'Sylo'
  homepage 'http://www.sylomusic.com/'

  auto_updates true

  app 'Sylo.app'
end
