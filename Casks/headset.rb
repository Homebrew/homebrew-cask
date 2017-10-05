cask 'headset' do
  version '1.6.0'
  sha256 '762af77950542b56622ddf889a00476f033113ab5c6babcd247f1c3460566486'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom',
          checkpoint: '0e8135ae560e24a849d84e51d2ee295433f2ca5fac2400aab7ead3f065a1251d'
  name 'Headset'
  homepage 'http://headsetapp.co/'

  app 'Headset.app'
end
