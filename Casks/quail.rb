cask 'quail' do
  version '0.6.0'
  sha256 'ee9884d2b2a02c6a77193714315e336be97db9b6725f3deb0c07c36d4ec0385d'

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/quail/releases.atom',
          checkpoint: '454bbda0fc014599dda6dbeb869ffd9399e6dcb06be8369255fc4c96119b403b'
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
