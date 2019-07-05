cask 'electrum' do
  version '3.3.7'
  sha256 'a35fece53c8ba1bf7d06651901ad4e014761b11851d9cfbcf86786891b66fa37'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom'
  name 'Electrum'
  homepage 'https://electrum.org/'

  app 'Electrum.app'

  zap trash: [
               '~/.electrum',
               '~/Library/Preferences/Electrum.plist',
               '~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist',
               '~/Library/Saved Application State/Electrum.savedState',
             ]
end
