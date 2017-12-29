cask 'adguard' do
  version '1.5.3'
  sha256 '04789440016347aa422779e932106a7bb138cfb57c02f4cf1e00c6f52769ae4b'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: 'cd4afc68309eea75f81629472375f9c7582380d5bc1a2494fc6beaa09728135a'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'

  app 'Adguard.app'

  zap trash: [
               '/Library/Application Support/com.adguard.Adguard',
               '~/Library/Application Support/Adguard',
               '~/Library/Application Support/com.adguard.Adguard',
               '~/Library/Caches/com.adguard.Adguard',
               '~/Library/Cookies/com.adguard.Adguard.binarycookies',
               '~/Library/Logs/Adguard',
               '~/Library/Preferences/com.adguard.Adguard.plist',
             ]
end
