cask 'electrum' do
  version '3.3.8'
  sha256 '767b4f1e1f11bb7489f73c989f538257340ab35bc27d1fe1a62cf68dab187b36'

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
