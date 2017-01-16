cask 'little-flocker' do
  version '1.4.6'
  sha256 'df3b30bb7c157ace96489f62b2b22aaf9a2a786694e02e0ebf5b20d93a465f64'

  url "https://www.littleflocker.com/downloads/LittleFlocker-#{version}.dmg"
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
