cask 'pydiosync' do
  version '1.2.4'
  sha256 'c4306dc1ab41247c20a91df49016cee3edcb7533c0f685bed3153e08ae7c23fa'

  url "https://download.pydio.com/pub/pydio-sync/release/#{version}/PydioSync-MacOSX-Installer-v#{version}.dmg"
  name 'PydioSync'
  homepage 'https://pydio.com'
  license :affero

  pkg 'PydioSync-Setup.pkg'

  uninstall pkgutil: 'io.pyd.sync.installer.PydioSync',
            delete:  '/Applications/PydioSync.app'

  zap delete: '~/Pydio'
end
