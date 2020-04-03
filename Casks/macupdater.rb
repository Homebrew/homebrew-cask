cask 'macupdater' do
  version '1.5.4'
  sha256 '5ec1063813bf2502e8a3c1f1ee0770bba3bbee1478cf680cff742dbb21e40a27'

  url "https://www.corecode.io/downloads/macupdater_#{version}.dmg"
  appcast 'https://www.corecode.io/macupdater/macupdater.xml'
  name 'MacUpdater'
  homepage 'https://www.corecode.io/macupdater/index.html'

  auto_updates true

  app 'MacUpdater.app'
  binary "#{appdir}/MacUpdater.app/Contents/Resources/macupdater_client"

  zap trash: [
               '~/Library/Application Scripts/com.corecode.MacUpdaterLaunchHelper',
               '~/Library/Application Support/MacUpdater',
               '~/Library/Caches/com.corecode.MacUpdater',
               '~/Library/Containers/com.corecode.MacUpdaterLaunchHelper',
               '~/Library/Cookies/com.corecode.MacUpdater.binarycookies',
               '~/Library/Preferences/com.corecode.MacUpdater.plist',
             ]
end
