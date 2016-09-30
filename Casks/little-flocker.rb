cask 'little-flocker' do
  version '0.99.92'
  sha256 '1844837870ac215ce6dd2a05ebd76f8e71f159456aa1e04f8e28a5aeb2a69150'

  # zdziarski.com/littleflocker was verified as official when first introduced to the cask
  url "https://www.zdziarski.com/littleflocker/LittleFlocker-#{version}.dmg"
  name 'Little Flocker'
  homepage 'https://littleflocker.com'
  license :commercial

  pkg 'Install Little Flocker.pkg'

  uninstall pkgutil: 'com.zdziarski.LittleFlockerDaemon'
end
