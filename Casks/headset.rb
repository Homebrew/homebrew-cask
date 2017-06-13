cask 'headset' do
  version '1.5.2'
  sha256 'f5a638d5c07dfc177be2ea0b8f056da08af242f83a0e70e6108e4e7321ab70af'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom',
          checkpoint: 'd3061a95b9c993b6021e5ec58c1d1c63a16a3d2102eb3acf404a50e87d6a6f8a'
  name 'Headset'
  homepage 'http://headsetapp.co/'

  app 'Headset.app'
end
