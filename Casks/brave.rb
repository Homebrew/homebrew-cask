cask 'brave' do
  version '0.11.0dev'
  sha256 '5e02bcabbb99c3ed6f62c59d71bff550dbc917db342c8e77193057b84686e0ca'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '52b121cb21637556172ee385ffcac91ea35bcf3d5de71757fe703669889be053'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
