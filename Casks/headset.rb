cask 'headset' do
  version '2.2.0'
  sha256 '4444053f14b9b7ae10af6f9c61c7d28cfa3d7016f30522b2f629d43f8eab1fb1'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom'
  name 'Headset'
  homepage 'https://headsetapp.co/'

  app 'Headset.app'

  zap trash: [
               '~/Library/Application Support/Headset',
               '~/Library/Preferences/co.headsetapp.app.helper.plist',
               '~/Library/Preferences/co.headsetapp.app.plist',
               '~/Library/Saved Application State/co.headsetapp.app.savedState',
             ]
end
