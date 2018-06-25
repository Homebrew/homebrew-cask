cask 'gifox' do
  version '010600.00'
  sha256 '3fda02e5dd7aac3ad128ffbfcd27640175cae83dd6d9c17bc6e93533026c97ff'

  # s3.eu-central-1.amazonaws.com/dstlalgzor/gifox was verified as official when first introduced to the cask
  url "https://s3.eu-central-1.amazonaws.com/dstlalgzor/gifox/#{version}.dmg"
  appcast 'https://s3.eu-central-1.amazonaws.com/dstlalgzor/gifox/appcast.xml'
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
