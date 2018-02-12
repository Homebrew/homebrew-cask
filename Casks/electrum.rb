cask 'electrum' do
  version '3.0.6'
  sha256 '10f2ba30d7ab8bfb79804371c5d7dc4407475dc33da403372172585ea304ad46'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: 'dde66cff248343bb9dea183f820330033eb3b4e00ae73549679b4940dda43d9a'
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
