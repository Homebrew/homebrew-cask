cask 'little-flocker' do
  version '1.0.0'
  sha256 '83e44bdb5f941803a6627ad346616be32f9c12853072221c4028bcdba3cee795'

  # zdziarski.com/littleflocker was verified as official when first introduced to the cask
  url "https://www.zdziarski.com/littleflocker/LittleFlocker-#{version}.dmg"
  name 'Little Flocker'
  homepage 'https://littleflocker.com'

  pkg 'Install Little Flocker.pkg'

  uninstall pkgutil: 'com.zdziarski.LittleFlockerDaemon'
end
