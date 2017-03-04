cask 'brave' do
  version '0.13.4dev'
  sha256 '36f7d822fae215e44189276ca27c8ffaa41b271f953e43fbad6df98e8f7b3c11'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '840b16ee6491d3c8ab85310c98e59b3c49f902cdad2be6df2d1eece29d69e99d'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
