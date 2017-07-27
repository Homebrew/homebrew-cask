cask 'brave' do
  version '0.18.14'
  sha256 '0a3d15b924a4ad85a51d3c1b62943ea6aa92381a80bea4933284174fd0c13f11'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '74f0088db0f580ecc5276ca073d2e8b6d1fe9065cfac0123844584fb39edfbc0'
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
