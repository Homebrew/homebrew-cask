cask 'pydiosync' do
  version '1.2.3'
  sha256 '6cf744a5be2d3672f26c1a24d062d0c79243eacc403c14f7c646a981baab79f8'

  url "https://download.pydio.com/pub/pydio-sync/release/#{version}/PydioSync-MacOSX-Installer-v#{version}.dmg"
  name 'PydioSync'
  homepage 'https://pydio.com'
  license :affero

  pkg 'PydioSync-Setup.pkg'

  uninstall pkgutil: 'io.pyd.sync.installer.PydioSync',
            delete: '/Applications/PydioSync.app'

  zap delete: '~/Pydio'

end
