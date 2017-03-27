cask 'little-flocker' do
  version '1.6.4'
  sha256 '0d23fdecd16cefdaee09a73f3edb7594f3bd2d3585550818fa90426d49053ae3'

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
