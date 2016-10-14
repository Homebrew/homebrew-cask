cask 'little-flocker' do
  version '0.99.93'
  sha256 '3dd1daa8d94d8182ac6194e84d36f7cc70502e4c6db1b9a7e1508d484206f597'

  # zdziarski.com/littleflocker was verified as official when first introduced to the cask
  url "https://www.zdziarski.com/littleflocker/LittleFlocker-#{version}.dmg"
  name 'Little Flocker'
  homepage 'https://littleflocker.com'

  pkg 'Install Little Flocker.pkg'

  uninstall pkgutil: 'com.zdziarski.LittleFlockerDaemon'
end
