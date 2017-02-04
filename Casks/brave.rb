cask 'brave' do
  version '0.13.1dev'
  sha256 '1d9d3c6947b57194526a5d0a1ed4ebb95581cb6e9fd585fc23fb275903b8e2df'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'b5f06098efdb2a15196c330b22d6bde25ab21d11e1e6ee96ec373d1fcd19623a'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
