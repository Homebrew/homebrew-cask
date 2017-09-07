cask 'headset' do
  version '1.5.2'
  sha256 'f5a638d5c07dfc177be2ea0b8f056da08af242f83a0e70e6108e4e7321ab70af'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom',
          checkpoint: '78caada7d8e65e8510f463975d1096e0e9bf5b2d5cabb2fdd9bec976b79ac46c'
  name 'Headset'
  homepage 'http://headsetapp.co/'

  app 'Headset.app'
end
