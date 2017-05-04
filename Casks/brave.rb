cask 'brave' do
  version '0.15.2'
  sha256 '56ef38654223c910dd8219fce426e27b613eedb900608304c260021f7f774210'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '28faec1a4f4f33af8ebe244ad22994557e875ae3a9531fadc29e80f6bbd3a110'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
