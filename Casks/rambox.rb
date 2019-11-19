cask 'rambox' do
  version '0.7.0'
  sha256 '6fd38c416bb62ce785ae24c7fa87b57078079724063dbbf869e37bf020205887'

  # github.com/ramboxapp/community-edition was verified as official when first introduced to the cask
  url "https://github.com/ramboxapp/community-edition/releases/download/#{version}/Rambox-#{version}-mac.zip"
  appcast 'https://github.com/ramboxapp/community-edition/releases.atom'
  name 'Rambox'
  homepage 'https://rambox.pro/'

  app 'Rambox.app'

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
