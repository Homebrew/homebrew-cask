class Parallels < Cask
  version '10.0.2-27712'
  sha256 'be7f850b1bbe813c16521ff784d85d46fc01ebbb40b8e02352e38e2add704591'

  url "http://download.parallels.com/desktop/v10/updates/#{version.gsub(/-.*$/, '')}/ParallelsDesktop-#{version}.dmg"
  homepage 'http://www.parallels.com/products/desktop/'
  license :commercial

  app 'Parallels Desktop.app'

  uninstall_preflight do
    # Need to change the ownership so that we can do the uninstall.  Running Parallels Desktop changes owner to root
    ohai "To uninstall Parallels Desktop 10, we need to change permissions, your password may be required."
    system '/usr/bin/sudo', '-E', '--', 'chown', '-R', "#{ENV['USER']}", destination_path.join("Parallels Desktop.app")
  end
  uninstall_postflight do
    # Need to remove these files that get symlinked into /usr/bin
    system '/usr/bin/sudo', '-E', '--', 'rm', '-f', '/usr/bin/prl_convert'
    system '/usr/bin/sudo', '-E', '--', 'rm', '-f', '/usr/bin/prl_disk_tool'
    system '/usr/bin/sudo', '-E', '--', 'rm', '-f', '/usr/bin/prl_perf_ctl'
    system '/usr/bin/sudo', '-E', '--', 'rm', '-f', '/usr/bin/prlctl'
    system '/usr/bin/sudo', '-E', '--', 'rm', '-f', '/usr/bin/prlsrvctl'
  end
  
  caveats <<-EOS.undent
    The first time you run Parallels Desktop, you will need to enter your
    password in order to complete the installation.
    
    EOS
  
end
