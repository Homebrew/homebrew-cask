cask 'macupdater' do
  version '1.4.18,6420'
  sha256 'e73049ab156381849effe405d7974c066deb1b095b7d78b5a2499e198db2744d'

  url "https://www.corecode.io/downloads/macupdater_#{version.before_comma}.dmg"
  appcast 'https://www.corecode.io/macupdater/macupdater.xml'
  name 'MacUpdater'
  homepage 'https://www.corecode.io/macupdater/index.html'

  app 'MacUpdater.app'

  zap trash: [
               '~/Library/Application Support/MacUpdater/',
               '~/Library/Caches/com.corecode.MacUpdater',
               '~/Library/Containers/com.corecode.MacUpdaterLaunchHelper',
               '~/Library/Application Scripts/com.corecode.MacUpdaterLaunchHelper/',
               '~/Library/Preferences/com.corecode.MacUpdater.plist',
             ]
end
