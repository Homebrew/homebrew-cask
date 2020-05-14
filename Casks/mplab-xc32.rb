cask 'mplab-xc32' do
  version '2.40'
  sha256 '98eb7107ed13cd08efd5ea1329a1778913ce692225590d7909ec2d62dfccd1be'

  url "https://ww1.microchip.com/downloads/en/DeviceDoc/xc32-v#{version}-full-install-osx-installer.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.microchip.com/mplabxc32osx'
  name 'MPLab XC32 Compiler'
  homepage 'https://www.microchip.com/mplab/compilers'

  installer script: {
                      executable: "xc32-v#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
                      args:       [
                                    '--mode', 'unattended',
                                    '--unattendedmodeui', 'none',
                                    '--ModifyAll', '0',
                                    '--netservername', '""',
                                    '--LicenseType', 'FreeMode',
                                    '--prefix', staged_path.to_s
                                  ],
                      input:      ['y'],
                      sudo:       true,
                    }
  binary "#{staged_path}/bin/xc32-ar"
  binary "#{staged_path}/bin/xc32-as"
  binary "#{staged_path}/bin/xc32-bin2hex"
  binary "#{staged_path}/bin/xc32-c++"
  binary "#{staged_path}/bin/xc32-c++filt"
  binary "#{staged_path}/bin/xc32-cc1"
  binary "#{staged_path}/bin/xc32-cc1plus"
  binary "#{staged_path}/bin/xc32-collect2"
  binary "#{staged_path}/bin/xc32-conv"
  binary "#{staged_path}/bin/xc32-cpp"
  binary "#{staged_path}/bin/xc32-elfedit"
  binary "#{staged_path}/bin/xc32-g++"
  binary "#{staged_path}/bin/xc32-gcc"
  binary "#{staged_path}/bin/xc32-ld"
  binary "#{staged_path}/bin/xc32-nm"
  binary "#{staged_path}/bin/xc32-objcopy"
  binary "#{staged_path}/bin/xc32-objdump"
  binary "#{staged_path}/bin/xc32-ranlib"
  binary "#{staged_path}/bin/xc32-readelf"
  binary "#{staged_path}/bin/xc32-size"
  binary "#{staged_path}/bin/xc32-strings"
  binary "#{staged_path}/bin/xc32-strip"

  postflight do
    set_ownership staged_path.to_s
  end

  uninstall script: {
                      executable: "Uninstall-xc32-v#{version}.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }
end
