cask 'parallels-desktop' do
  version '12.0.1-41296'
  sha256 'a7d98416cf330c8429cbdaf3d127786ede1e62bc90207e5d9fe840e8eec53d9a'

  url "https://download.parallels.com/desktop/v#{version[%r{^\w+}]}/#{version}/ParallelsDesktop-#{version}.dmg"
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'
  license :commercial

  app 'Parallels Desktop.app'

  postflight do
    # Unhide the application
    system '/usr/bin/sudo', '-E', '--', 'chflags', 'nohidden', "#{appdir}/Parallels Desktop.app"

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
