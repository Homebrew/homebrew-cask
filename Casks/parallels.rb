class Parallels < Cask
  version '10.0.2-27712'
  sha256 'be7f850b1bbe813c16521ff784d85d46fc01ebbb40b8e02352e38e2add704591'

  url "http://download.parallels.com/desktop/v10/updates/#{version.gsub(/-.*$/, '')}/ParallelsDesktop-#{version}.dmg"
  homepage 'http://www.parallels.com/products/desktop/'
  license :commercial

  app 'Parallels Desktop.app'

  uninstall_preflight do
    # Need to change the ownership so that we can do the uninstall.  Running Parallels Desktop changes owner to root
    # TODO: this should be moved to the core (see issue #6699)
    ohai "To uninstall Parallels Desktop 10, we need to change permissions, your password may be required."
    system '/usr/bin/sudo', '-E', '--', 
           '/usr/sbin/chown', '-R', Etc.getpwuid(Process.euid).name, destination_path.join("Parallels Desktop.app")
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
