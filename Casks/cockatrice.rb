cask 'cockatrice' do
  version '2.3.17,2017-05-05:Trials_of_the_Gods'
  sha256 'd0400d5a23acb8e54e1a02196d1db83fccfc7259f28e9d16a74ddc92cc3fd797'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}.dmg"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom',
          checkpoint: '4ad8c56dd33bd0ae3f1a60532c4a140f866b703106d3b7490dccd4cc591986b2'
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
