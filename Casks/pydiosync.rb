cask 'pydiosync' do
  version '1.2.5'
  sha256 'f63f7c618bb77db52e4ee1c6dc9d63c73502a9cb72777bcce990b1c11561bf91'

  url "https://download.pydio.com/pub/pydio-sync/release/#{version}/PydioSync-MacOSX-Installer-v#{version}.dmg"
  name 'PydioSync'
  homepage 'https://pydio.com'
  license :affero

  pkg 'PydioSync-Setup.pkg'

  uninstall pkgutil: 'io.pyd.sync.installer.PydioSync',
            delete:  '/Applications/PydioSync.app'

  zap delete: '~/Pydio'
end
