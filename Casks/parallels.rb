cask 'parallels' do
  version '14.1.1-45476'
  sha256 'b95d10a12a89ce6ab837910177a067fac8d75c530b93efbd509f42cf115eed26'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  appcast 'https://kb.parallels.com/eu/124521'
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
