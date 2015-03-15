cask :v1 => 'parallels-desktop' do
  version '10.1.4-28883'
  sha256 'd4af01e7f0d4af433dd79d97c48ab6522d7a7c3569e08bade4ebbed7f903cbed'

  url "http://download.parallels.com/desktop/v#{version[/^\w+/]}/#{version.sub(/-.*$/, '')}/ParallelsDesktop-#{version}.dmg"
  homepage 'http://www.parallels.com/products/desktop/'
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
