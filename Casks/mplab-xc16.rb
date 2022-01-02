cask "mplab-xc16" do
  version "1.70"
  sha256 "b8c2b5cbab87c0947c0513c8a66648c8c4d4626107284c208e62ec19600ebb65"

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
