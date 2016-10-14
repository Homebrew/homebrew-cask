cask 'little-flocker' do
  version '0.99.95'
  sha256 'eac6662b5c85891ebbb7920f548a65257e2f708d70767bfc0a89b4025805546d'

  # zdziarski.com/littleflocker was verified as official when first introduced to the cask
  url "https://www.zdziarski.com/littleflocker/LittleFlocker-#{version}.dmg"
  name 'Little Flocker'
  homepage 'https://littleflocker.com'

  pkg 'Install Little Flocker.pkg'

  uninstall pkgutil: 'com.zdziarski.LittleFlockerDaemon'
end
