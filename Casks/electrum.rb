cask 'electrum' do
  version '3.1.1'
  sha256 '75d18a8b75a4d2bc4c028744cfb7a6fbfb56889de056c6e0b1858628086ae663'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: '51133ceff378c055e1db6ab03d81af178a98d4db68dddcd812ecee877ed2aca6'
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
