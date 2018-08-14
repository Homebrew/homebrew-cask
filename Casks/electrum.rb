cask 'electrum' do
  version '3.2.2'
  sha256 '1e9020b335cbb9daadf9b6dabbfa3f8c371f65d26884c9a45b9250b700ffbc99'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'

  zap trash: [
               '~/.electrum',
               '~/Library/Preferences/Electrum.plist',
               '~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist',
               '~/Library/Saved Application State/Electrum.savedState',
             ]
end
