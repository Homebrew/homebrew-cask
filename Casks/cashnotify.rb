cask 'cashnotify' do
  version '3.1.2'
  sha256 'e65978eb3ad40d55daf488a429cf3df80eb295ebdff3db62565db4731d588b1a'

  url 'https://download.cashnotify.com/download/mac/'
  appcast 'https://github.com/BaguetteEngineering/download.cashnotify.com/releases.atom'
  name 'CashNotify'
  homepage 'https://cashnotify.com/'

  auto_updates true

  app 'CashNotify.app'

  uninstall launchctl: 'com.baguetteengineering.cashnotify.ShipIt',
            quit:      'com.baguetteengineering.cashnotify'

  zap trash: [
               '~/Library/Application Support/CashNotify',
               '~/Library/Application Support/Caches/cashnotify-updater',
               '~/Library/Caches/com.baguetteengineering.cashnotify',
               '~/Library/Caches/com.baguetteengineering.cashnotify.ShipIt',
               '~/Library/Logs/CashNotify',
               '~/Library/Preferences/com.baguetteengineering.cashnotify.helper.plist',
               '~/Library/Preferences/com.baguetteengineering.cashnotify.plist',
               '~/Library/Saved Application State/com.baguetteengineering.cashnotify.savedState',
             ]
end
