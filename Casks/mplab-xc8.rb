cask :v1 => 'mplab-xc8' do
  version '1.33'
  sha256 '3f3b65b0808241ea2fdb984aad28c88de9a813eeaa5c0a7bb19c3e63a31ca03d'

  url "http://ww1.microchip.com/downloads/en/DeviceDoc/xc8-v#{version}-full-install-osx-installer.dmg"
  name 'MPLab XC32 Compiler'
  homepage 'http://www.microchip.com/pagehandler/en-us/devtools/mplabxc/home.html'
  license :freemium

  installer :script => "xc8-v#{version}-osx.app/Contents/MacOS/installbuilder.sh",
            :args => ['--mode', 'unattended',
                      '--unattendedmodeui', 'none',
                      '--netclient', '0',
                      '--netservername', '""',
                      '--installerfunction', 'installcompiler',
                      '--ModifyAll', '0',
                      '--prefix', "/opt/homebrew-cask/Caskroom/mplab-xc8/#{version}"]

  postflight do
    system '/usr/bin/sudo', '-E', '--', '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "/opt/homebrew-cask/Caskroom/mplab-xc8/#{version}"
    system '/bin/rm', '-rf', '--', "/opt/homebrew-cask/Caskroom/mplab-xc8/xc8-v#{version}-osx-installer.app"
  end

  binary 'bin/aspic'
  binary 'bin/aspic18'
  binary 'bin/cgpic'
  binary 'bin/cgpic18'
  binary 'bin/clist'
  binary 'bin/cpp'
  binary 'bin/cromwell'
  binary 'bin/dump'
  binary 'bin/hexmate'
  binary 'bin/hlink'
  binary 'bin/libr'
  binary 'bin/mcc18'
  binary 'bin/mplib'
  binary 'bin/mplink'
  binary 'bin/objtohex'
  binary 'bin/p1'
  binary 'bin/picc'
  binary 'bin/picc18'
  binary 'bin/xc8'
  binary 'bin/xstrip'
  binary 'bin/xclm', :target => 'xc8lm'

  uninstall :script => {
                :executable => "Uninstall-xc8-v#{version}.app/Contents/MacOS/installbuilder.sh",
                :args => ['--mode', 'unattended']
  }
end
