cask 'app-cleaner' do
  version '7.0'
  sha256 'c809a9e00d1de525906e7305a53897eb06ed77110a5b58f7fc002c1a7d4e96c3'

  url 'https://nektony.com/pro-support/mac-app-cleaner-pro/update/update.zip'
  appcast 'https://nektony.com/pro-support/app-cleaner/update/update.xml'
  name 'Nektony App Cleaner & Uninstaller'
  homepage 'https://nektony.com/mac-app-cleaner'

  app 'App Cleaner & Uninstaller.app'

  zap trash: [
               '~/Library/Application Scripts/com.nektony.App-Cleaner-Pro',
               '~/Library/Application Support/com.nektony.App-Cleaner-Pro',
               '~/Library/Caches/com.nektony.App-Cleaner-Pro',
               '~/Library/Containers/com.nektony.StartupDiskFull',
               '~/Library/Preferences/com.nektony.App-Cleaner-Pro.plist',
               '~/Library/Saved Application State/com.nektony.App-Cleaner-Pro.savedState',
             ]
end
