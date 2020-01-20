cask 'app-cleaner' do
  version '6.8'
  sha256 '8caad06381d004ec3499033d63c415038ba8278c5c5423f42821766296a470d7'

  url 'https://nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg'
  appcast 'https://nektony.com/promo/mac-app-cleaner-pro/update/update.xml'
  name 'Nektony App Cleaner & Uninstaller'
  homepage 'https://nektony.com/mac-app-cleaner'

  app 'App Cleaner.app'

  zap trash: [
               '~/Library/Application Scripts/com.nektony.App-Cleaner-Pro',
               '~/Library/Application Support/com.nektony.App-Cleaner-Pro',
               '~/Library/Caches/com.nektony.App-Cleaner-Pro',
               '~/Library/Containers/com.nektony.StartupDiskFull',
               '~/Library/Preferences/com.nektony.App-Cleaner-Pro.plist',
               '~/Library/Saved Application State/com.nektony.App-Cleaner-Pro.savedState',
             ]
end
