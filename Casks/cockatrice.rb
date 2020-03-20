cask 'cockatrice' do
  if MacOS.version <= :mojave
    version '2.7.2,2019-08-31:Faerie_Tales'
    sha256 '862ba7bdcdfef0ecd17c9b380a0f1fb9f4fcaada203a7fb7af7a837d63eaa5da'

    # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-osx-sierra.dmg"
  else
    version '2.7.3,2020-03-19:Dawn_of_Hope'
    sha256 'bd55e0184c780e8e3bd114dbcc073bb7eaa54ba4f1b47b7c83740037d3e022fa'

    # github.com/Cockatrice/Cockatrice was verified as official when first introduced to the cask
    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-macos-catalina.dmg"
  end

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
