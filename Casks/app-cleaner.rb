cask 'app-cleaner' do
  version '6.7.1'
  sha256 'a8e26b3f9136c190571f01a2b3aadb098b36ceb572d2777e53238b452c5b73b9'

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
