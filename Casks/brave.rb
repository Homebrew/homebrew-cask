cask 'brave' do
  version '0.12.13dev'
  sha256 'b993c333f208b4571f4f2d9e251379c48a52f80ea40a2225f5da3f6aaa7303fd'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '2554f6510a7c8e8544ca7ab7361e846b4a7bf9ab67fcf9bd98707d43bfaf8db9'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
