cask :v1 => 'parallels-desktop' do
  version '11.1.0-32202'
  sha256 'd62f9e470fae3a7a2ac6a3041e3ecdff8e028fab8eaa5841d88fa708ccd16670'

  url "http://download.parallels.com/desktop/v#{version[/^\w+/]}/#{version}/ParallelsDesktop-#{version}.dmg"
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'
  license :commercial

  app 'Parallels Desktop.app'

  postflight do
    # Set the file to visible, since it was hidden in the dmg
    system '/usr/bin/SetFile', '-a', 'v', staged_path.join('Parallels Desktop.app')
  end

  uninstall :delete => [
                         '/usr/bin/prl_convert',
                         '/usr/bin/prl_disk_tool',
                         '/usr/bin/prl_perf_ctl',
                         '/usr/bin/prlctl',
                         '/usr/bin/prlsrvctl',
                       ]
  zap       :delete => [
                         '~/.parallels_settings',
                         '~/Library/Caches/com.parallels.desktop.console',
                         '~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist',
                         '~/Library/Preferences/com.parallels.desktop.console.plist',
                         '~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist',
                         '~/Library/Preferences/com.parallels.Parallels Desktop.plist',
                         '~/Library/Preferences/com.parallels.Parallels.plist',
                        ]
end
