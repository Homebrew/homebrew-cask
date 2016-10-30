cask 'brave' do
  version '0.12.7dev'
  sha256 '202d10fb4e95b919347d8c8ba79f68a6b60b526201a6f1a6ef313507ad164c0d'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '528b81708ef877d7514cba576ef0eee854e8a4e061057908188149464b6e1487'
  name 'Brave'
  homepage 'https://brave.com'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
