cask 'quail' do
  version '1.1.1'
  sha256 'dd994f4e4d094b63f81095ec3df1e632419e3be418a4c4820c3c86970756eb61'

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
