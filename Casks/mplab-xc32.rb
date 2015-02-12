cask :v1 => 'mplab-xc32' do
  version '1.34'
  sha256 '47d97c5e535f66b02c2046d1665f7be91bbfe458f80a63a9eda12db0fc136098'

  url "http://ww1.microchip.com/downloads/en/DeviceDoc/xc32-v#{version}-full-install-osx-installer.dmg"
  name 'MPLab XC32 Compiler'
  homepage 'http://www.microchip.com/pagehandler/en-us/devtools/mplabxc/home.html'
  license :freemium

  installer :script => "xc32-v#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
            :args => ['--mode', 'unattended',
                      '--unattendedmodeui', 'none',
                      '--netclient', '0',
                      '--netservername', '""',
                      '--installerfunction', 'installcompiler',
                      '--ModifyAll', '0',
                      '--prefix', "/opt/homebrew-cask/Caskroom/mplab-xc32/#{version}"]

  postflight do
    system '/usr/bin/sudo', '-E', '--', '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "/opt/homebrew-cask/Caskroom/mplab-xc32/#{version}"
    system '/bin/rm', '-rf', '--', "/opt/homebrew-cask/Caskroom/mplab-xc32/xc32-v#{version}-osx-installer.app"
  end

  binary 'bin/xc32-addr2line'
  binary 'bin/xc32-ar'
  binary 'bin/xc32-as'
  binary 'bin/xc32-bin2hex'
  binary 'bin/xc32-c++'
  binary 'bin/xc32-c++filt'
  binary 'bin/xc32-cc1'
  binary 'bin/xc32-cc1plus'
  binary 'bin/xc32-collect2'
  binary 'bin/xc32-conv'
  binary 'bin/xc32-cpp'
  binary 'bin/xc32-elfedit'
  binary 'bin/xc32-g++'
  binary 'bin/xc32-gcc'
  binary 'bin/xc32-ld'
  binary 'bin/xc32-nm'
  binary 'bin/xc32-objcopy'
  binary 'bin/xc32-objdump'
  binary 'bin/xc32-ranlib'
  binary 'bin/xc32-readelf'
  binary 'bin/xc32-size'
  binary 'bin/xc32-strings'
  binary 'bin/xc32-strip'
  binary 'bin/xclm', :target => 'xc32lm'

  uninstall :script => {
                :executable => "Uninstall-xc32-v#{version}.app/Contents/MacOS/installbuilder.sh",
                :args => ['--mode', 'unattended']
  }
end
