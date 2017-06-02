cask 'brave' do
  version '0.15.314'
  sha256 'abb8ceaa780a4dd67a9ff74c5a0603e4a2c4d36809221ddfa66d53fa86ea6e4c'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'c5f0f86daade006949c4a78fb9b3430aa4336d87722192daf979e99dedd52f26'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
