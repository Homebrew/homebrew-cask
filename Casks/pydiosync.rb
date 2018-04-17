cask 'pydiosync' do
  version '1.2.8'
  sha256 'da7ef2a6729b27bb9837d7637da6b7c2288a595b6bec52288b0f123f85e8021e'

  url "https://download.pydio.com/pub/pydio-sync/release/#{version}/PydioSync-MacOSX-Installer-v#{version}.dmg"
  name 'PydioSync'
  homepage 'https://pydio.com/'

  pkg 'PydioSync-Setup.pkg'

  uninstall pkgutil: 'io.pyd.sync.installer.PydioSync'

  zap trash: '~/Pydio'
end
