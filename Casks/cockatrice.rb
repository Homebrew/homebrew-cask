cask 'cockatrice' do
  version '2017-03-31-Release-2.3.15,Thopter_Pie_Network_Revision1'
  sha256 'ef6b164495020a7af708df054df33974b0fda88876956992f2641511d7c079e3'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.before_comma}/Cockatrice_#{version.after_comma}_osx.dmg"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom',
          checkpoint: 'fd4d295fc880ed4a1e76c2ec8ca01c92d3f56292bb8566bb0fabbc44bdc48221'
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
