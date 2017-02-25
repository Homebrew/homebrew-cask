cask 'little-flocker' do
  version '1.5.0'
  sha256 'a5cefd4c2f1ef0301ec93889d1d0e4ff2e49cf2d0019169ba542d2463aeb6228'

  url "https://www.littleflocker.com/downloads/LittleFlocker-#{version}.dmg"
  name 'Little Flocker'
  homepage 'https://www.littleflocker.com/'

  depends_on macos: '>= :el_capitan'

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
