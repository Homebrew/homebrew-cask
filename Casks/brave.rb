cask 'brave' do
  version '0.19.48'
  sha256 '6b681ca7fa45859a0becf5d997d3bbb04bf6fa30086cab1a973f66033aa582e4'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '2f89242bb17df1f9f4e87de2f286ec80d432971f8391999c78c8b1456f0b92ea'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap delete: '~/Library/Saved Application State/com.electron.brave.savedState',
      trash:  [
                '~/Library/Application Support/brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
