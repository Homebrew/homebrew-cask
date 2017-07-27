cask 'brave' do
  version '0.17.19'
  sha256 '67f40e780dcd352134d9f743ce4aacdbd27555ca7706d6ef60918a68cf2f6e54'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '49c6ea4d3a43429a52906ed9b49d36176981d037074b595370e0906fec748a9a'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
