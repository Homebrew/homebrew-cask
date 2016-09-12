cask 'brave' do
  version '0.12.0dev'
  sha256 'bed6e0fc6627fd54757008ae1b330eaa15f463f0a509c363ad3d7e71a4a4f343'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'ab090d0f29048f4ce2cff54a745a6a61bc361d8b83b1a60a3cb171db75acba76'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
