cask 'cockatrice' do
  version '2.6.1,2018-07-17:Father_of_Ruins_Revision_1'
  sha256 'b35790a9391195d5bd9087f73a9eedac7e3cdd413b1dfeae65fe226bfa5354ac'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}.dmg"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom'
  name 'Cockatrice'
  homepage 'https://cockatrice.github.io/'

  app 'cockatrice.app'
  app 'oracle.app'
  app 'servatrice.app'

  uninstall quit: [
                    'com.cockatrice.cockatrice',
                    'com.cockatrice.oracle',
                    'com.cockatrice.servatrice',
                  ]

  zap trash: [
               '~/Library/Application Support/Cockatrice',
               '~/Library/Preferences/com.cockatrice.Cockatrice.plist',
               '~/Library/Preferences/com.cockatrice.oracle.plist',
               '~/Library/Preferences/de.cockatrice.Cockatrice.plist',
               '~/Library/Saved Application State/com.cockatrice.cockatrice.savedState',
               '~/Library/Saved Application State/com.cockatrice.oracle.savedState',
             ]
end
