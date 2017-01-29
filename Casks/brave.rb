cask 'brave' do
  version '0.13.0dev'
  sha256 '9b6536e968b212971ab2e8d5518776d82967120a81137e22b8a317a1422ebcdc'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '18a9ec4234da958e40f6de76a9097c1d08b3fd9b2a92a08237b1d17f0d7f489a'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
