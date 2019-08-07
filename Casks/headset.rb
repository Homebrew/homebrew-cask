cask 'headset' do
  version '3.0.2'
  sha256 '6b1ca851e160c1f5af986f0e3aeb0b785b2330c150d074c2f0adda90badb0b57'

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
