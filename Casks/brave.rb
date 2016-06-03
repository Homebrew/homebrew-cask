cask 'brave' do
  version '0.10.1dev'
  sha256 '5f314f403fcd4924ae32e34617db0bd80ab29c14090368efc78f38b816668752'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '93ff7c496f4fc0c92c6ef5cf524cae2a76061e581451a7271193f3a1a4ceff2b'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
