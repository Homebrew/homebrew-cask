cask 'macupdater' do
  version '1.5.4'
  sha256 '173056d0a21a27eb9c308afa9de1862f22d3acd2f117f9d193ff249650f77f3d'

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
