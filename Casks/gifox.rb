cask 'gifox' do
  version '010300.00'
  sha256 'c5e1bd3bf6595bdf43463a2a150a20f1459dd9c239a79af8c3b86b54f7888c7a'

  # s3.eu-central-1.amazonaws.com/dstlalgzor/gifox was verified as official when first introduced to the cask
  url "https://s3.eu-central-1.amazonaws.com/dstlalgzor/gifox/#{version}.dmg"
  appcast 'https://s3.eu-central-1.amazonaws.com/dstlalgzor/gifox/appcast.xml',
          checkpoint: '28c984b4a54afb70cc6820d7e4d0af841d64cf0ae306ef0fcb222f46f7834a6b'
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
