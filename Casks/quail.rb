cask 'quail' do
  version '1.0.0'
  sha256 '8debc84afb9074e23beea66b77e11bfe074a747877270f0522de1f76b14166f3'

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
