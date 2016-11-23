cask 'brave' do
  version '0.12.10dev'
  sha256 'e2c706491d4037e695be5abb4be1024a7fa8c26cd733b1e21ee6179f5d1a4cb7'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '5fd92e5631b617190f6b70b2133dff1c8e93802e71a7ef7286893199cd7d6e06'
  name 'Brave'
  homepage 'https://brave.com'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
