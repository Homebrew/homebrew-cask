cask 'app-cleaner' do
  version '7.0'
  sha256 'a900a7ae17283d579fb1eee6ef8dd259d79455b7543b12fdd5f1b66e2db9dfb3'

  url 'https://nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg'
  appcast 'https://nektony.com/pro-support/app-cleaner/update/update.xml'
  name 'Nektony App Cleaner & Uninstaller'
  homepage 'https://nektony.com/mac-app-cleaner'

  app "App Cleaner #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/com.nektony.App-Cleaner-Pro',
               '~/Library/Application Support/com.nektony.App-Cleaner-Pro',
               '~/Library/Caches/com.nektony.App-Cleaner-Pro',
               '~/Library/Containers/com.nektony.StartupDiskFull',
               '~/Library/Preferences/com.nektony.App-Cleaner-Pro.plist',
               '~/Library/Saved Application State/com.nektony.App-Cleaner-Pro.savedState',
             ]
end
