cask 'brave' do
  version '0.10.3dev'
  sha256 '61d5ffde1f6fd4975230a98181f3f789f5fccb9c54906071d882bde2c0c9c9be'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'bb4e23a982c897c40b5d8d5add2717a6d8c344965fab31e5a8c173d31ac9e494'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
