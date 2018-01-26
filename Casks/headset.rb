cask 'headset' do
  version '1.6.4'
  sha256 '3afc1ce70cafc362c04a94f8e26bad7c4a0769bcfae8c0b0d6e89f8585b6bf7f'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom',
          checkpoint: '72a8a30bbc3cc56a730a78b0d86e8bee939fb217b32d7732ca0d3de85a844759'
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
