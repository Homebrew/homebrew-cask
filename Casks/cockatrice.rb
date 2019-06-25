cask 'cockatrice' do
  version '2.7.1,2019-06-08:Beyond_the_Horizons'
  sha256 'f56f1024c989494dda1828603e1e88ec5c71ba90d6be4938b98e0f00be316b26'

  # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
  url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}_1-osx-sierra.dmg"
  appcast 'https://github.com/Cockatrice/Cockatrice/releases.atom'
  name 'Cockatrice'
  homepage 'https://cockatrice.github.io/'

  depends_on macos: '>= :sierra'

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
