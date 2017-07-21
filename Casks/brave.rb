cask 'brave' do
  version '0.17.19'
  sha256 '67f40e780dcd352134d9f743ce4aacdbd27555ca7706d6ef60918a68cf2f6e54'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'd01353583f1f1ab46feba9de8c552c8d386aa20d0d81d01e17f40d0cd1d1724a'
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
