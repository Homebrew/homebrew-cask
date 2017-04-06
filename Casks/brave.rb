cask 'brave' do
  version '0.14.1dev'
  sha256 '9f784594a90978789de5602f5b7c9b4b570929c553a25e3453aa9383ad967637'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'd060da35270ef9313a797eb4590f09a8e83650f56e2106f368054cd7e48604b1'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
