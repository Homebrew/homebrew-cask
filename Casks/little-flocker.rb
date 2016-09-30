cask 'little-flocker' do
  version '0.99.90'
  sha256 'daea3cabb3b900be9330bb67c34d2bcc3c12e88fd08b3d0c6bdcd264f98475ed'

  # zdziarski.com/littleflocker was verified as official when first introduced to the cask
  url "https://www.zdziarski.com/littleflocker/LittleFlocker-#{version}.dmg"
  name 'Little Flocker'
  homepage 'https://littleflocker.com'
  license :commercial

  pkg 'Install Little Flocker.pkg'

  uninstall pkgutil: 'com.zdziarski.LittleFlockerDaemon'
end
