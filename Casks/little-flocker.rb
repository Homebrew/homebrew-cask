cask 'little-flocker' do
  version :latest
  sha256 :no_check

  # zdziarski.com/littleflocker was verified as official when first introduced to the cask
  url 'https://www.zdziarski.com/littleflocker/LittleFlocker-latest.dmg'
  name 'Little Flocker'
  homepage 'https://littleflocker.com'

  pkg 'Install Little Flocker.pkg'

  uninstall pkgutil: 'com.zdziarski.LittleFlockerDaemon'
end
