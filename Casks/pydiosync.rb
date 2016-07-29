cask 'pydiosync' do
  version '1.2.6'
  sha256 '0c607dadf2b3079bdebba50d792eeb81375330031232f37c5d1d4b74bc62d0ba'

  url "https://download.pydio.com/pub/pydio-sync/release/#{version}/PydioSync-MacOSX-Installer-v#{version}.dmg"
  name 'PydioSync'
  homepage 'https://pydio.com'
  license :affero

  pkg 'PydioSync-Setup.pkg'

  uninstall pkgutil: 'io.pyd.sync.installer.PydioSync',
            delete:  '/Applications/PydioSync.app'

  zap delete: '~/Pydio'
end
