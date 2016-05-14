cask 'brave' do
  version '0.9.5dev'
  sha256 '3e78e170c98ded632eafbd8fe4ebad5945f39f534f4d153685944e77101bc9e4'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '75048c938fb246c569df96d83b816d2deb91613e24471c0fe2033855057f4234'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
