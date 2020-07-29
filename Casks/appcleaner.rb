cask 'appcleaner' do
  if MacOS.version <= :sierra
    version '3.4'
    sha256 '0c60d929478c1c91e0bad76d3c04795665c07a05e45e33321db845429c9aefa8'
  else
    version '3.5'
    sha256 '9a67033977622f8523c6d11315fd646b4b3b7b2675ec7c10b37b4d5f5602acb3'
    appcast 'https://freemacsoft.net/appcleaner/Updates.xml'
  end

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name 'FreeMacSoft AppCleaner'
  homepage 'https://freemacsoft.net/appcleaner/'

  auto_updates true

  app 'AppCleaner.app'

  uninstall quit:      'net.freemacsoft.AppCleaner',
            launchctl: 'net.freemacsoft.AppCleaner-SmartDelete'

  zap trash: [
               '~/Library/Caches/net.freemacsoft.AppCleaner',
               '~/Library/Preferences/net.freemacsoft.AppCleaner.plist',
               '~/Library/Preferences/net.freemacsoft.AppCleaner-SmartDelete.plist',
               '~/Library/Saved Application State/net.freemacsoft.AppCleaner.savedState',
             ]
end
