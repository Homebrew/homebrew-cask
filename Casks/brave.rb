cask 'brave' do
  version '0.15.1'
  sha256 '6cef3e45939601f0a9baa3be5cf66d86fcc1e6189bde19f37cb4e952e806f70d'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '2f18feb61f5f08bf3e8bbb84d82f2003a3865806062025f8168a5ebafcc5e5d3'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
