cask 'brave' do
  version '0.12.8dev'
  sha256 '028e3dc7e0d0469ccd6521d4b19e367b306e700766985996ebaece7dd26470ec'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'a2afc4fbec77355866dd1dd72384d5d2198499c247cf0e0e1eec1baaef8c48f2'
  name 'Brave'
  homepage 'https://brave.com'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
