cask 'parallels' do
  version '15.1.1-47117'
  sha256 'e80906e2f71acd6e1097e9a5a8b67bca34e67e99dcd2bb1c8444a27fdef640b0'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  appcast 'https://kb.parallels.com/eu/124724'
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'

  auto_updates true
  depends_on macos: '>= :sierra'
  # This .dmg cannot be extracted normally
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/67202
  container type: :naked

  preflight do
    system_command '/usr/bin/hdiutil',
                   args: ['attach', '-nobrowse', "#{staged_path}/ParallelsDesktop-#{version}.dmg"]
    system_command "/Volumes/Parallels Desktop #{version.major}/Parallels Desktop.app/Contents/MacOS/inittool",
                   args: ['install', '-t', "#{appdir}/Parallels Desktop.app"],
                   sudo: true
    system_command '/usr/bin/hdiutil',
                   args: ['detach', "/Volumes/Parallels Desktop #{version.major}"]
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
