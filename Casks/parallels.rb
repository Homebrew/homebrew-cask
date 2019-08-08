cask 'parallels' do
  version '14.1.3-45485'
  sha256 '34c9c345642fa30f9d240a76062c5672e399349d5e5984db9c208d22e099f8b9'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  appcast 'https://kb.parallels.com/eu/124521'
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'

  auto_updates true
  # This .dmg cannot be extracted normally
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/67202
  container type: :naked

  preflight do
    system_command '/usr/bin/hdiutil',
                   args: ['attach', '-nobrowse', "#{staged_path}/ParallelsDesktop-#{version}.dmg"]
    system_command "/Volumes/Parallels Desktop #{version.major}/Parallels Desktop.app/Contents/MacOS/inittool",
                   args: ['install', '-t', "#{appdir}/Parallels Desktop.app", '-s'],
                   sudo: true
    system_command '/usr/bin/hdiutil',
                   args: ['detach', "/Volumes/Parallels Desktop #{version.major}"]
  end

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
                      '/Applications/Parallels Desktop.app',
                      '/Applications/Parallels Desktop.app/Contents/Applications/Parallels Link.app',
                      '/Applications/Parallels Desktop.app/Contents/Applications/Parallels Mounter.app',
                      '/Applications/Parallels Desktop.app/Contents/Applications/Parallels Technical Data Reporter.app',
                      '/Applications/Parallels Desktop.app/Contents/MacOS/Parallels Service.app',
                      '/Applications/Parallels Desktop.app/Contents/MacOS/Parallels VM.app',
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
