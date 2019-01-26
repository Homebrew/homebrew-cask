cask 'electrum' do
  version '3.3.3'
  sha256 '7417047a17884a27d6f39c47ba7ee5f6c8a6d2db2e85c2627b67db5a32f44282'

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
