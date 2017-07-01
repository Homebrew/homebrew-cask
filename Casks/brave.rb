cask 'brave' do
  version '0.17.13'
  sha256 'd32bcbbd015af192aae33c3dc69d722d1c774cd7d705ad93396cc22a835ba323'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '7aed2b5c599512210351090c0c30e0b6d0d934f1704b9176d4611dde2079883d'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
