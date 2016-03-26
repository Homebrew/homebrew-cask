cask 'parallels-desktop' do
  version '11.1.3-32521'
  sha256 '1c1e81c59696b0810486e5dac372e670ce740fc68fa725a654a56dea1b598af3'

  url "http://download.parallels.com/desktop/v#{version[%r{^\w+}]}/#{version}/ParallelsDesktop-#{version}.dmg"
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'
  license :commercial

  app 'Parallels Desktop.app'

  postflight do
    # Set the file to visible, since it was hidden in the dmg
    system '/usr/bin/SetFile', '-a', 'v', staged_path.join('Parallels Desktop.app')
    
    # Run the initialization script
    system '/usr/bin/sudo', '-E', '--',
            staged_path.join('Parallels Desktop.app/Contents/MacOS/inittool'), 
            'init', '-b', staged_path.join('Parallels Desktop.app')
    
    # Set the correct permissions on the link - remove after #13201 is solved 
    system '/usr/bin/sudo', '-E', '--',
            'chown', '-h', 'root:wheel', Hbc.appdir.join('Parallels Desktop.app')
  end

  uninstall_preflight do
    set_ownership staged_path.join('Parallels Desktop.app')
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
