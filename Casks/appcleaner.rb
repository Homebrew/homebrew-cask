cask 'appcleaner' do
  if MacOS.version <= :mavericks
    version '2.3'
    sha256 '69da212e2972e23e361c93049e4b4505d7f226aff8652192125f078be7eecf7f'
  else
    version '3.5'
    sha256 '9a67033977622f8523c6d11315fd646b4b3b7b2675ec7c10b37b4d5f5602acb3'
    appcast 'https://freemacsoft.net/appcleaner/Updates.xml'
  end

  url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name 'AppCleaner'
  homepage 'https://freemacsoft.net/appcleaner/'

  auto_updates true
  depends_on macos: '>= :tiger'

  app 'AppCleaner.app'

  uninstall quit: 'net.freemacsoft.AppCleaner-SmartDelete'

  zap trash: [
               '~/Library/Caches/net.freemacsoft.AppCleaner',
               '~/Library/Preferences/net.freemacsoft.AppCleaner.plist',
               '~/Library/Saved Application State/net.freemacsoft.AppCleaner.savedState',
               '~/Library/Preferences/net.freemacsoft.AppCleaner-SmartDelete.plist',
             ]
end
