cask 'cashnotify' do
  version '3.2.1'
  sha256 '64aaf9cfa4c0b2fad42098a1335f5aaa8afffaa2cc6a3acb185049e4c6a1a0ed'

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
