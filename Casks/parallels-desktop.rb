cask 'parallels-desktop' do
  version '11.2.0-32581'
  sha256 'af5891183faac0b3080ebc46f5c225b61f5df82e11fea267148b67a4ea8da57c'

  url "http://download.parallels.com/desktop/v#{version[%r{^\w+}]}/#{version}/ParallelsDesktop-#{version}.dmg"
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'
  license :commercial

  app 'Parallels Desktop.app'

  postflight do
    # Run the initialization script
    system '/usr/bin/sudo', '-E', '--',
           "#{appdir}/Parallels Desktop.app/Contents/MacOS/inittool",
           'init', '-b', "#{appdir}/Parallels Desktop.app"
  end

  uninstall_preflight do
    set_ownership "#{appdir}/Parallels Desktop.app"
  end

  uninstall delete: [
                      '/usr/bin/prl_convert',
                      '/usr/bin/prl_disk_tool',
                      '/usr/bin/prl_perf_ctl',
                      '/usr/bin/prlctl',
                      '/usr/bin/prlsrvctl',
                    ]

  zap       delete: [
                      '~/.parallels_settings',
                      '~/Library/Caches/com.parallels.desktop.console',
                      '~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist',
                      '~/Library/Preferences/com.parallels.desktop.console.plist',
                      '~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist',
                      '~/Library/Preferences/com.parallels.Parallels Desktop.plist',
                      '~/Library/Preferences/com.parallels.Parallels.plist',
                    ]
end
