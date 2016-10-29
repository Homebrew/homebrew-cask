cask 'brave' do
  version '0.12.7dev'
  sha256 '202d10fb4e95b919347d8c8ba79f68a6b60b526201a6f1a6ef313507ad164c0d'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'ecfc19fa397ed1c63024dba3412ac6c1c426fae035dc258a9f3500303901c877'
  name 'Brave'
  homepage 'https://brave.com'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
