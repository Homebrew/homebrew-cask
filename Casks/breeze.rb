cask 'breeze' do
  version '1.6'
  sha256 'dd99bca96ff8b5d244f2eb0cf13537b112478efe5a96b9c05b6f92e43810d8df'

  url "https://autumnapps.com/downloads/Breeze#{version}.zip"
  appcast 'https://www.autumnapps.com/updates/profiles/breeze.php'
  name 'Breeze'
  homepage 'https://autumnapps.com/breeze/'

  app 'Breeze.app'

  uninstall quit: 'com.autumnapps.direct.Breeze'

  zap trash: [
               '~/Library/Caches/com.autumnapps.direct.Breeze',
               '~/Library/Preferences/com.autumnapps.direct.Breeze.plist',
             ]
end
