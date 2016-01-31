cask 'blueharvest' do
  version '6.3.5'
  sha256 '1b4e2af76f472959263308ded37ffd0ad10f5685a94cb5d98787cbd8eff6365a'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.delete('.')}.dmg"
  # ezyreg.com verified as official when first introduced to the cask
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: 'a6cf19b8001d0ee963e505ddafaa8a2f07381f1ad35be630947d4e58a4368b73'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'
  license :commercial

  app 'BlueHarvest.app'
end
