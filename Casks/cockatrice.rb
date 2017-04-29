cask 'cockatrice' do
  version '2017-04-15-Release-2.3.16,Thopter_Pie_Network_Revision2'
  sha256 '7805ab87a575a046db7f7ec583b4fbdfdd2346935264d7b3d7e437dd42c63775'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.before_comma}/Cockatrice_#{version.after_comma}_osx.dmg"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom',
          checkpoint: '62ec13c1cd85124d87d26c107e195b0db675867a868fd40c6532567d8b7f5f72'
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
