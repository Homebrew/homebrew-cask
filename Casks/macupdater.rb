cask 'macupdater' do
  version '1.3.0'
  sha256 'dadd71f8163f91980435b601470c8ba7ed0b66455965f464e4aeee5874595794'

  url "https://www.corecode.io/downloads/macupdater_#{version}.zip"
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
