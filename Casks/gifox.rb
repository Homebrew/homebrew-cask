cask 'gifox' do
  version '020000.07'
  sha256 '0b4a8984a6f46ae5583675d44144b9741a9f50d8ecd23a76371683c0b9cf5226'

  # d1hsvn1xu03mmy.cloudfront.net/gifox was verified as official when first introduced to the cask
  url "https://d3si16icyi9iar.cloudfront.net/gifox/#{version}.dmg"
  appcast 'https://d3si16icyi9iar.cloudfront.net/gifox/appcast.xml'
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
