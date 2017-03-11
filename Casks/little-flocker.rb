cask 'little-flocker' do
  version '1.6.1'
  sha256 'e07576974ec461f0b42e338b34f6763f61e38da7d128fa248ec16688b3274422'

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
