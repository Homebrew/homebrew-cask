cask 'headset' do
  version '1.6.1'
  sha256 '5b8aa6bb7aef989f2960136e8d86dee9340103614adc02d208bd7b558e611eb5'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom',
          checkpoint: '757797ecbe7bbda34e5efcf484dd843fd5a8f411e112448c91b90aeaf6d38650'
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
