cask "mplab-xc16" do
  version "2.00"
  sha256 "df1c619ebc35f360fcb7f809983fdb81613ebb153b324ac14ba1d654817456e7"

  url "https://ww1.microchip.com/downloads/en/DeviceDoc/xc16-v#{version}-full-install-osx64-installer.dmg"
  name "MPLab XC16 Compiler"
  desc "Compiler for 16-bit PIC and SAM MCUs and MPUs"
  homepage "https://www.microchip.com/mplab/compilers"

  livecheck do
    url "https://www.microchip.com/mplabxc16osx"
    strategy :header_match
  end

  installer script: {
    executable: "xc16-v#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       [
      "--mode", "unattended",
      "--unattendedmodeui", "none",
      "--ModifyAll", "0",
      "--netservername", '""',
      "--LicenseType", "FreeMode",
      "--prefix", staged_path.to_s
    ],
    input:      ["y"],
    sudo:       true,
  }
  binary "#{staged_path}/bin/sim30"
  binary "#{staged_path}/bin/xc16-ar"
  binary "#{staged_path}/bin/xc16-as"
  binary "#{staged_path}/bin/xc16-bin2hex"
  binary "#{staged_path}/bin/xc16-cc1"
  binary "#{staged_path}/bin/xc16-gcc"
  binary "#{staged_path}/bin/xc16-ld"
  binary "#{staged_path}/bin/xc16-nm"
  binary "#{staged_path}/bin/xc16-objcopy"
  binary "#{staged_path}/bin/xc16-objdump"
  binary "#{staged_path}/bin/xc16-pa"
  binary "#{staged_path}/bin/xc16-ranlib"
  binary "#{staged_path}/bin/xc16-readelf"
  binary "#{staged_path}/bin/xc16-strings"
  binary "#{staged_path}/bin/xc16-strip"

  postflight do
    set_ownership staged_path.to_s
  end

  uninstall script: {
    executable: "Uninstall-xc16-v#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
