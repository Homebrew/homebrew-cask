cask 'pydiosync' do
  version '1.2.7'
  sha256 'a2c3f133940fb64e8dd915fe1750c914ad4289d6a18e3188696a676d175840f6'

  url "https://download.pydio.com/pub/pydio-sync/release/#{version}/PydioSync-MacOSX-Installer-v#{version}.dmg"
  name 'PydioSync'
  homepage 'https://pydio.com'

  pkg 'PydioSync-Setup.pkg'

  uninstall pkgutil: 'io.pyd.sync.installer.PydioSync',
            delete:  '/Applications/PydioSync.app'

  zap delete: '~/Pydio'
end
