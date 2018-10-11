cask 'parallels' do
  version '14.0.1-45154'
  sha256 '2d3157fa684c9e255927ae4a04f303107427a3ea166eea6ea86f0963cb24e4bb'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'

  app 'Parallels Desktop.app'

  postflight do
    # Unhide the application
    system_command '/usr/bin/chflags',
                   args: ['nohidden', "#{appdir}/Parallels Desktop.app"],
                   sudo: true

    # Run the initialization script
    system_command "#{appdir}/Parallels Desktop.app/Contents/MacOS/inittool",
                   args: ['init', '-b', "#{appdir}/Parallels Desktop.app"],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/Parallels Desktop.app"
  end

  uninstall delete: [
                      '/usr/local/bin/prl_convert',
                      '/usr/local/bin/prl_disk_tool',
                      '/usr/local/bin/prl_perf_ctl',
                      '/usr/local/bin/prlcore2dmp',
                      '/usr/local/bin/prlctl',
                      '/usr/local/bin/prlexec',
                      '/usr/local/bin/prlsrvctl',
                    ]

  zap trash: [
               '~/.parallels_settings',
               '~/Library/Caches/com.parallels.desktop.console',
               '~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist',
               '~/Library/Preferences/com.parallels.desktop.console.plist',
               '~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist',
               '~/Library/Preferences/com.parallels.Parallels Desktop.plist',
               '~/Library/Preferences/com.parallels.Parallels.plist',
             ]
end
