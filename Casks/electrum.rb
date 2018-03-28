cask 'electrum' do
  version '3.1.2'
  sha256 '7d8c407024fa24bcdb7b52b72ba47e366aacb51e6d27b28123684e74aa163440'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: 'a62a083d7b167dd299e07173ad5e497ea41db2bcd7e54a7f99c487e2c9e6aeca'
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
