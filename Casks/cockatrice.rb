cask 'cockatrice' do
  version '2.7.4,2020-03-20:Dawn_of_Hope_Revision_1'

  if MacOS.version <= :high_sierra
    sha256 '9525b9c8e9011eb017e795fd9090990c096c66a5b707184cd19ff0d3ba421c19'

    # github.com/Cockatrice/Cockatrice/ was verified as official when first introduced to the cask
    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-macos10.13.dmg"
  else
    sha256 'cacad08859a9de04548828476e16ad148ad29169fd4674282a2bdd0808b74b9f'

    # github.com/Cockatrice/Cockatrice/ was verified as official when first introduced to the cask
    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-macos10.14.zip"
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
