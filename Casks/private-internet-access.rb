cask :v1 => 'private-internet-access' do
  version :latest
  sha256 :no_check

  url 'https://www.privateinternetaccess.com/installer/installer_osx.dmg'
  name 'Private Internet Access'
  homepage 'https://www.privateinternetaccess.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => 'Private Internet Access Installer.app/Contents/MacOS/runner.sh'

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", Pathname.new(File.expand_path('~')).join('.pia_manager')
  end

  uninstall :delete => '/Applications/Private Internet Access.app'
  zap       :delete => '~/.pia_manager'
end
