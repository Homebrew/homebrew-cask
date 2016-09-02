cask 'brave' do
  version '0.11.6dev'
  sha256 'b56092ba9728dda089c7019ebf0ef74abf5fcdf09eef1b7eeb7a6fc2216927ef'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '7ff8fc822db7b1c26d34ab15ce05fe3b317f0ccf91cdb20856dbff5bb66fc59a'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
