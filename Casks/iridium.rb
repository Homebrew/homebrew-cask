cask 'iridium' do
  version '57.0.0'
  sha256 '3fec33a6426d1ee1a52371a721b4760fa8d0bd355cf5e0060f84201859210b66'

  url "https://downloads.iridiumbrowser.de/macosx/#{version}/iridium_browser_#{version}_osx_x64.dmg"
  appcast 'https://downloads.iridiumbrowser.de/macosx/',
          checkpoint: '8eecacd9cc8db0fca9979234468787faedff9a7a902f0740a23aa70a5cceca95'
  name 'Iridium Browser'
  homepage 'https://iridiumbrowser.de/'

  app 'Iridium.app'

  zap delete: [
                '~/Library/Preferences/de.iridiumbrowser.plist',
                '~/Library/Caches/de.iridiumbrowser',
                '~/Library/Application Support/Iridium',
                '~/Library/Saved Application State/de.iridiumbrowser.savedState',
              ]
end
