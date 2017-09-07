cask 'quail' do
  version '0.7.2'
  sha256 '3a4a472e5f369e4d99f66e1fa7b852ffc32c94585b4de04e99e48ea41a2be130'

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/quail/releases.atom',
          checkpoint: '1aa228b633eddc26a9a83815277ade164efb1f2a4173e67276b7ffb63903b292'
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
