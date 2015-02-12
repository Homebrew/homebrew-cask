cask :v1 => 'mplab-xc16' do
  version '1.24'
  sha256 'f717ff76388d8b46b0add82048a42fa34f56879814775fe798300a33266c47b3'

  url "http://ww1.microchip.com/downloads/en/DeviceDoc/xc16-v#{version}-full-install-osx-installer.dmg"
  name 'MPLab XC16 Compiler'
  homepage 'http://www.microchip.com/pagehandler/en-us/devtools/mplabxc/home.html'
  license :freemium

  installer :script => "xc16-v#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
            :args => ['--mode', 'unattended',
                      '--unattendedmodeui', 'none',
                      '--netclient', '0',
                      '--netservername', '""',
                      '--installerfunction', 'installcompiler',
                      '--ModifyAll', '0',
                      '--prefix', "/opt/homebrew-cask/Caskroom/mplab-xc16/#{version}"]

  postflight do
    system '/usr/bin/sudo', '-E', '--', '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "/opt/homebrew-cask/Caskroom/mplab-xc16/#{version}"
    system '/bin/rm', '-rf', '--', "/opt/homebrew-cask/Caskroom/mplab-xc16/xc16-v#{version}-osx-installer.app"
  end

  binary 'bin/sim30'
  binary 'bin/xc16-ar'
  binary 'bin/xc16-as'
  binary 'bin/xc16-bin2hex'
  binary 'bin/xc16-cc1'
  binary 'bin/xc16-gcc'
  binary 'bin/xc16-ld'
  binary 'bin/xc16-nm'
  binary 'bin/xc16-objdump'
  binary 'bin/xc16-pa'
  binary 'bin/xc16-ranlib'
  binary 'bin/xc16-readelf'
  binary 'bin/xc16-strings'
  binary 'bin/xc16-strip'

  uninstall :script => {
                :executable => "Uninstall-xc16-v#{version}.app/Contents/MacOS/installbuilder.sh",
                :args => ['--mode', 'unattended']
  }
end
