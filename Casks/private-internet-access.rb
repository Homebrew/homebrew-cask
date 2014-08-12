class PrivateInternetAccess < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.privateinternetaccess.com/installer/installer_osx.dmg'
  homepage 'https://www.privateinternetaccess.com'

  after_install do
      system '/usr/bin/sudo', '-E', '--',
          "#{destination_path}/Private Internet Access Installer.app/Contents/MacOS/runner.sh"
      system '/usr/bin/sudo', '-E', '--',
          '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", ENV['HOME'] + '/.pia_manager'
  end

  uninstall :files => [
      '/Applications/Private Internet Access.app',
      ENV['HOME'] + '/.pia_manager'
  ]
end
