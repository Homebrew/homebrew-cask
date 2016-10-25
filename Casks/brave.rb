cask 'brave' do
  version '0.12.6dev'
  sha256 'c4c637116ad291ee56efb71bfd9639d7f648f9c0bd94abcd27c9939c3f806d1e'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'ee13ac95cf643a6b751c2f3109a7045b1243918bd09a417bfe667f412202f8d8'
  name 'Brave'
  homepage 'https://brave.com'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
