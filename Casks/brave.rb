cask 'brave' do
  version '0.15.310'
  sha256 '295c7a1a7226f04bc05151c21aefdae15bbf34f7d18578890c0aaa9c4dd91bda'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'f84eca4d6a8277535a558bdf8167d483ecf5ef1a247fd49ccee78a315856dcba'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
