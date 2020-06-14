cask 'quail' do
  version '1.1.0'
  sha256 '39ed98afa8f1f122ddcc73221e34949c113acda8ddcb51e333cdfa610c2cd6ec'

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-#{version}.dmg"
  appcast 'https://github.com/1000ch/quail/releases.atom'
  name 'Quail'
  homepage 'https://github.com/1000ch/quail'

  app 'Quail.app'

  zap trash: [
               '~/Library/Application Support/Quail',
               '~/Library/Caches/net.1000ch.quail',
               '~/Library/Caches/net.1000ch.quail.ShipIt',
               '~/Library/Preferences/net.1000ch.quail.helper.plist',
               '~/Library/Preferences/net.1000ch.quail.plist',
               '~/Library/Saved Application State/net.1000ch.quail.savedState',
             ]
end
