cask 'brave' do
  version '0.11.4dev'
  sha256 '518fb6166db7b04e364a73de4a0edd167055e2d4bddceabaa54b36ba413f3d11'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '117a5d415417dd259a47dda70905f937be8fd60eca546f8df02c4716fbe59cea'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
