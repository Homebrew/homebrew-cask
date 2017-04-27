cask 'brave' do
  version '0.15.0'
  sha256 '1d0fc1b43ec5dbbf2f73b27b4c5a15ce1ce804da16d7a6b6c4819b054cbf2afd'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '68505a2b73acb04a78a70773c017c2c77cf50e514598dd544a2cfb2cd3506a95'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
