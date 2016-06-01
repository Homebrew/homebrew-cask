cask 'cockatrice' do
  version '2016-05-06,The_Shadows'
  sha256 'd59f7778f6ad153478716209f480e79ada3b0fd4a3ec3902a9650dff82e4ada0'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.before_comma}-Release/Cockatrice_#{version.after_comma}_osx.dmg.zip"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom',
          checkpoint: '5a119ae4ed3c642e334614763aabe442631ddfa3594e99f5a3419518805d5a90'
  name 'Cockatrice'
  homepage 'http://www.woogerworks.com/'
  license :gpl

  container nested: "Cockatrice_#{version.after_comma}_osx.dmg"

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
