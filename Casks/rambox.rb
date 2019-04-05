cask 'rambox' do
  version '0.6.4'
  sha256 'afd32151203b365f33612edf7e9a84fa6b00e04de0dd46c8bf0c04bc32adf256'

  # github.com/ramboxapp/community-edition was verified as official when first introduced to the cask
  url "https://github.com/ramboxapp/community-edition/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/ramboxapp/community-edition/releases.atom'
  name 'Rambox'
  homepage 'https://rambox.pro/'

  app 'Rambox.app'

  uninstall login_item: 'Rambox'

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
