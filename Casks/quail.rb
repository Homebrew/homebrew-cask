cask 'quail' do
  version '0.9.0'
  sha256 '702a3fe4b2c2c7024357b2ef144b0ef837d8047c5a4ba32963e6fe293e273f34'

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/quail/releases.atom',
          checkpoint: '3558d2f1ecdd4cd9f9d33e948743f993c7d3e8b3579ced3f648d29e3bf83964a'
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
