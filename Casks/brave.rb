cask 'brave' do
  version '0.11.1dev'
  sha256 'ae2497f76fd736154be73deec7acdc4b01749be3040a16e68970afcf0e648960'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '4a5dec05ef80acc778cbccfb13eb3fa79773e016c193861e71ed490c0a3df71e'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
