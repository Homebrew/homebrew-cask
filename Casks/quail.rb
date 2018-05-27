cask 'quail' do
  version '0.11.0'
  sha256 '76ac1f9b81f15749753a8b7379b89e9f83a032758ac2af9ff5463344f16557bc'

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/quail/releases.atom',
          checkpoint: 'd4303e66e01bb987a59c084a1dbee1f4effaca37dce1c63112354574e8c78efa'
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
