cask 'beardedspice' do
  version '2.2.0'
  sha256 'c47433b374b96c7d8a37e067293c3077661188911f18a568a247e75ecf1f1c63'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: 'f9eff1960ddcd2a2e9a36958e0bb68ec10fdd43123fe42218a60f9b9ff2e7cc3'
  name 'BeardedSpice'
  homepage 'https://github.com/beardedspice/beardedspice/'

  auto_updates true

  app 'BeardedSpice.app'

  zap delete: [
                '~/Library/Caches/com.beardedspice.BeardedSpice',
                '~/Library/Preferences/com.beardedspice.BeardedSpice.plist',
              ]
end
