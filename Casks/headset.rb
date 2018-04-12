cask 'headset' do
  version '1.8.1'
  sha256 '4487eb62bfe5e2088676c1e555d32699474664cd9f1452f2086aa05f176b5cd8'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom',
          checkpoint: '5a042f25952e37c3f76f74ce3fe8f0af5619de7d039fcfb1cdca67474a7d4aa2'
  name 'Headset'
  homepage 'http://headsetapp.co/'

  app 'Headset.app'

  zap trash: [
               '~/Library/Application Support/Headset',
               '~/Library/Preferences/co.headsetapp.app.helper.plist',
               '~/Library/Preferences/co.headsetapp.app.plist',
               '~/Library/Saved Application State/co.headsetapp.app.savedState',
             ]
end
