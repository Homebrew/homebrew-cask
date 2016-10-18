cask 'cockatrice' do
  version '2016-06-30,Archivist_Madness'
  sha256 '01324b10b9588b66f30a3315392032faac841478226f6bd34be0965d63a3c0cf'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.before_comma}-Release/Cockatrice_#{version.after_comma}_osx.dmg.zip"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom',
          checkpoint: '52a316aa5b7a91ec5bc05ab970ed7093a2e79e609b2bc22fe9ffaf44b2b73928'
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
