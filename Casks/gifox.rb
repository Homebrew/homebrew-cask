cask 'gifox' do
  version '010301.00'
  sha256 '09dc7b2c357e30f2d0ec3600bd522d6cfb95d2c9821f54164c53066e5c5ca7f1'

  # s3.eu-central-1.amazonaws.com/dstlalgzor/gifox was verified as official when first introduced to the cask
  url "https://s3.eu-central-1.amazonaws.com/dstlalgzor/gifox/#{version}.dmg"
  appcast 'https://s3.eu-central-1.amazonaws.com/dstlalgzor/gifox/appcast.xml',
          checkpoint: '57e6492b681ed9c6489b0cc1491cbe7975aadab4c5b24845122460782a8ab23c'
  name 'gifox'
  homepage 'https://gifox.io/'

  app 'Gifox.app'

  uninstall launchctl: 'com.gifox.gifox.agent',
            quit:      'com.gifox.gifox'

  zap delete: [
                '~/Library/Caches/com.gifox.gifox',
                '~/Library/Cookies/com.gifox.gifox.binarycookies',
              ],
      trash:  [
                '~/Library/Application Support/Gifox',
                '~/Library/Preferences/com.gifox.gifox.plist',
              ]
end
