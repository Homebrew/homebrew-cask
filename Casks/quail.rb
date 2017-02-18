cask 'quail' do
  version '0.5.0'
  sha256 '577b5cb350d0ead37664f1a7bd00f0658414da8d74cff44f9322effa1b79d8c7'

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/quail/releases.atom',
          checkpoint: 'c3955d31f25603ae8604b8dc955828df1829018b0161c8ad1f51dc31c245e4bd'
  name 'Quail'
  homepage 'https://github.com/1000ch/quail'

  app 'Quail.app'

  zap delete: [
                '~/Library/Application Support/Quail',
                '~/Library/Caches/net.1000ch.quail',
                '~/Library/Caches/net.1000ch.quail.ShipIt',
                '~/Library/Preferences/net.1000ch.quail.helper.plist',
                '~/Library/Preferences/net.1000ch.quail.plist',
                '~/Library/Saved Application State/net.1000ch.quail.savedState',
              ]
end
