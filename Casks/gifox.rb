cask 'gifox' do
  version '010601.03'
  sha256 'b0dea197c7c0f1533de4ca2d0402247780bc0463eecdfd8dfa3928f81e5399a9'

  # d1hsvn1xu03mmy.cloudfront.net/gifox was verified as official when first introduced to the cask
  url "https://d1hsvn1xu03mmy.cloudfront.net/gifox/#{version}.dmg"
  appcast 'https://d1hsvn1xu03mmy.cloudfront.net/gifox/appcast.xml'
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
