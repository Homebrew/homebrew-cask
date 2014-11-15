cask :v1 => 'parallels' do
  version '10.1.1-28614'
  sha256 'd39780b42640c5de6198fb7434e24ac1cc983cc13b131c73cdba775964ec4e0d'

  url "http://download.parallels.com/desktop/v10/updates/#{version.gsub(/-.*$/, '')}/ParallelsDesktop-#{version}.dmg"
  homepage 'http://www.parallels.com/products/desktop/'
  license :commercial

  app 'Parallels Desktop.app'

  postflight do
    # Set the file to visible, since it was hidden in the dmg
    system '/usr/bin/SetFile', '-a', 'v', staged_path.join("Parallels Desktop.app")
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


  caveats <<-EOS.undent
    The first time you run Parallels Desktop, you will need to enter your
    password in order to complete the installation.

    EOS

end
