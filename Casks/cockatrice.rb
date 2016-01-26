cask 'cockatrice' do
  version :latest
  sha256 :no_check

  url 'http://www.woogerworks.com/files/cockatrice_weeklybuilds/Cockatrice-MacClient.dmg'
  name 'Cockatrice'
  homepage 'http://www.woogerworks.com/'
  license :gpl

  app 'cockatrice.app'
  app 'oracle.app'

  uninstall quit: [
                    'com.cockatrice.cockatrice',
                    'com.cockatrice.oracle',
                  ]

  zap delete: [
                '~/Library/Application Support/Cockatrice',
                '~/Library/Preferences/com.cockatrice.Cockatrice.plist',
                '~/Library/Preferences/com.cockatrice.oracle.plist',
                '~/Library/Preferences/de.cockatrice.Cockatrice.plist',
                '~/Library/Saved Application State/com.cockatrice.cockatrice.savedState',
                '~/Library/Saved Application State/com.cockatrice.oracle.savedState',
              ]
end
