cask 'little-flocker' do
  version '0.99.90'
  sha256 'daea3cabb3b900be9330bb67c34d2bcc3c12e88fd08b3d0c6bdcd264f98475ed'

  # zdziarski.com was verified as official when first introduced to the cask
  url 'https://www.zdziarski.com/littleflocker/LittleFlocker-0.99.90.dmg'
  name 'Little Flocker'
  homepage 'https://wwwlittleflocker.com'
  license :closed

  pkg 'Install Little Flocker.pkg'
  uninstall pkgutil: 'com.zdziarski.LittleFlockerDaemon'
end
