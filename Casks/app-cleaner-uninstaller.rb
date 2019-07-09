cask 'app-cleaner-uninstaller' do
  version :latest
  sha256 :no_check

  url 'https://nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg'
  name 'App Cleaner & Uninstaller'
  homepage 'https://nektony.com/mac-app-cleaner'

  app 'App Cleaner & Uninstaller.app'

  zap trash: [
               '~/Library/Application\ Scripts/com.nektony.App-Cleaner-Pro',
               '~/Library/Application\ Support/com.nektony.App-Cleaner-Pro',
               '~/Library/Caches/com.nektony.App-Cleaner-Pro',
               '~/Library/Containers/com.nektony.StartupDiskFull',
               '~/Library/Preferences/com.nektony.App-Cleaner-Pro.plist',
               '~/Library/Saved\ Application\ State/com.nektony.App-Cleaner-Pro.savedState',
             ]
end
