cask 'cockatrice' do
  version '2016-02-03,Gatewatchers'
  sha256 'bddcd36c4517ee60fa342496488ca1d4678e22dc07f6abe50a4f139194b6ec1a'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.before_comma}-Release/Cockatrice-#{version.after_comma}-osx.dmg.zip"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom',
          checkpoint: '5a119ae4ed3c642e334614763aabe442631ddfa3594e99f5a3419518805d5a90'
  name 'Cockatrice'
  homepage 'http://www.woogerworks.com/'
  license :gpl

  #container nested: "Cockatrice-#{version.after_comma}-osx.dmg"
  # This is a typo on their part, and needs to be corrected upstream
  container nested: 'Cockatrice-Gatewaterchers-osx.dmg'

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
