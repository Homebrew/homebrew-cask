cask 'brave' do
  version '0.10.2dev'
  sha256 'a51fba336acf34005a236aeaf4ef4ba0b63fc0b4e04304c20af79fc83bfe880f'

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
