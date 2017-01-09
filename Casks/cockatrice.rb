cask 'cockatrice' do
  version '2016-12-31,All_Hallows_Eve_Revision1'
  sha256 '173ed52cda8e984cd37c1bb6967ba6d9269e212a4c58802951c140f15bd2e0d1'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.before_comma}-Release/Cockatrice_#{version.after_comma}_osx.dmg"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom',
          checkpoint: '6d2a3f4aee905da93316c3ffc70891937900f5aa34b61182c487de7b935f7e1e'
  name 'Cockatrice'
  homepage 'http://www.woogerworks.com/'

  app 'cockatrice.app'
  app 'oracle.app'
  app 'servatrice.app'

  uninstall quit: [
                    'com.cockatrice.cockatrice',
                    'com.cockatrice.oracle',
                    'com.cockatrice.servatrice',
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
