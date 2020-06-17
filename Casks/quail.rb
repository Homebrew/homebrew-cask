cask 'quail' do
  version '1.2.0'
  sha256 'a28e2050771503bf2f27d40d87f5ddcce0b19babe8e99893780b84282fc74d0c'

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
