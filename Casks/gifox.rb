cask 'gifox' do
  version '010400.02'
  sha256 'c0f9fb1be9f1086ad54f85e6d02319dbdfbd1f2c155cb67642cd2240c57692b8'

  # s3.eu-central-1.amazonaws.com/dstlalgzor/gifox was verified as official when first introduced to the cask
  url "https://s3.eu-central-1.amazonaws.com/dstlalgzor/gifox/#{version}.dmg"
  appcast 'https://s3.eu-central-1.amazonaws.com/dstlalgzor/gifox/appcast.xml',
          checkpoint: '56064af28f246bba075adbb0f18f01f7a19c0922f1445e83c777e4bb35fc3522'
  name 'gifox'
  homepage 'https://gifox.io/'

  app 'Gifox.app'

  uninstall launchctl: 'com.gifox.gifox.agent',
            quit:      'com.gifox.gifox'

  zap trash: [
               '~/Library/Application Support/Gifox',
               '~/Library/Caches/com.gifox.gifox',
               '~/Library/Cookies/com.gifox.gifox.binarycookies',
               '~/Library/Preferences/com.gifox.gifox.plist',
             ]
end
