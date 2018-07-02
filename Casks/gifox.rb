cask 'gifox' do
  version '010601.02'
  sha256 '6e563695a1872b3f61474afc56b5ebb6905cec7ccaff6b3d53e03c0e0c44a6af'

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
