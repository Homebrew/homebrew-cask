cask 'app-cleaner' do
  version '6.9'
  sha256 'c24592669ae5fd4a674ddfda38aa70c5be0e206ef24620b0e43a9160fa29d294'

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
