cask 'pydiosync' do
  version '2.2.0'
  sha256 '02cceaa7de07596543b60b10bfe07c250b0b823c4455989362446699924db6f3'

  url "https://download.pydio.com/pub/pydio-sync/release/#{version}/PydioSync-MacOSX-Installer-v#{version}.dmg"
  name 'PydioSync'
  homepage 'https://pydio.com/'

  pkg 'PydioSync-Setup.pkg'

  uninstall pkgutil: 'io.pyd.sync.installer.PydioSync'

  zap trash: '~/Pydio'
end
