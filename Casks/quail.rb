cask 'quail' do
  version '0.5.1'
  sha256 '6cc7aaf65fc9b9f2c90a4ccc07e937733a0e181900a8f3e2ed79015cde01fa52'

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/quail/releases.atom',
          checkpoint: 'd20a216591ea6ba084feb625f144aaee83781ca1ede0af3eef46454d866b12c3'
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
