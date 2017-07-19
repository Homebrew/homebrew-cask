cask 'brave' do
  version '0.17.16'
  sha256 'a6d47e1dd02c90d2daf8d0e2d7a160ec63205f2cfeaaee329edfc370a556d6fc'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'dfcf4d0f135a37404d12c33617ca81e320669e1bf1608b8d712484befaa3b59d'
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
