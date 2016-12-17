cask 'little-flocker' do
  version '1.3'
  sha256 '781df9bdcadbcd6e61ee511b667de24f295ac06ca2676e6817456979f658b7a2'

  # zdziarski.com/littleflocker was verified as official when first introduced to the cask
  url "https://www.zdziarski.com/littleflocker/LittleFlocker-#{version}.dmg"
  name 'Little Flocker'
  homepage 'https://www.littleflocker.com/'

  pkg 'Install Little Flocker.pkg'

  uninstall pkgutil: 'com.zdziarski.LittleFlockerDaemon'

  zap       delete: [
                      '~/Library/Caches/com.zdziarski.LittleFlockerUpdater',
                      '~/Library/Cookies/com.zdziarski.LittleFlockerUpdater.binarycookies',
                      '~/Library/Preferences/com.zdziarski.LittleFlockerConfiguration.plist',
                      '~/Library/Preferences/com.zdziarski.LittleFlockerUpdater.plist',
                      '/Users/Shared/Little Flocker',
                      '/Users/Shared/Little Flocker Extras',
                    ]

  caveats do
    reboot
  end
end
