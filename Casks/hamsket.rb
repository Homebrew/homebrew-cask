cask 'hamsket' do
  version '0.5.20'
  sha256 '0c692c67ee0f1465775b2f9276de19786655b09a03d61684e7d2569cb44e5bd3'

  url "https://github.com/TheGoddessInari/hamsket/releases/download/#{version}/Rambox-OS-#{version}.dmg"
  appcast 'https://github.com/TheGoddessInari/hamsket/releases.atom'
  name 'Hamsket'
  homepage 'https://github.com/TheGoddessInari/hamsket'

  app 'Rambox-OS.app', target: 'Hamsket.app'

  zap trash: [
               '~/Library/Application Support/CrashReporter/Rambox Helper_*.plist',
               '~/Library/Application Support/CrashReporter/Rambox_*.plist',
               '~/Library/Application Support/Rambox',
               '~/Library/Caches/com.grupovrs.ramboxce',
               '~/Library/Caches/com.grupovrs.ramboxce.ShipIt',
               '~/Library/Caches/com.saenzramiro.rambox',
               '~/Library/Logs/Rambox',
               '~/Library/Preferences/ByHost/com.grupovrs.ramboxce.ShipIt.*.plist',
               '~/Library/Preferences/com.grupovrs.ramboxce.helper.plist',
               '~/Library/Preferences/com.grupovrs.ramboxce.plist',
               '~/Library/Preferences/com.saenzramiro.rambox.helper.plist',
               '~/Library/Preferences/com.saenzramiro.rambox.plist',
               '~/Library/Saved Application State/com.grupovrs.ramboxce.savedState',
               '~/Library/Saved Application State/com.saenzramiro.rambox.savedState',
               '~/Library/WebKit/com.saenzramiro.rambox',
             ]
end
