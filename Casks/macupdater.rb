cask 'macupdater' do
  version '1.5.0'
  sha256 '6c35d8a815e3716449eebbc67bc9994791157d586e99e1e33699ea5db6d674e9'

  url "https://www.corecode.io/downloads/macupdater_#{version}.dmg"
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
