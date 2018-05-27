cask 'headset' do
  version '1.9.0'
  sha256 '72bf5260ea35a139574cd3c8ecd9e408744f9e90b0a5157b85610335ef34e6d7'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom',
          checkpoint: 'e67478d06330b4195866898f3e509c1ed53cee620057cd1876dc1580c464f822'
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
