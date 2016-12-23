cask 'brave' do
  version '0.12.15dev'
  sha256 '4a94c42a45f26ba7609a153039ae3926ebf3e682201b8ba655ed313962d454a5'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '2a5456d6e2e49802347879f664f3203e0062c42ea3bfc8c61559bd0b2b2a1103'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
