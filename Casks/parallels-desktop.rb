cask 'parallels-desktop' do
  version '12.0.0-41273'
  sha256 '85489b3b55655087ca57733e2e95650e03d6eb441389e570bd4f2f0c8be37245'

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
