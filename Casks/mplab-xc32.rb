cask "mplab-xc32" do
  version "3.01"
  sha256 "f8ef09babfd238f155fd5409ab7923f140cb4ea55a1302d81d5f8e5d8157f78c"

  url "https://ww1.microchip.com/downloads/en/DeviceDoc/xc32-v#{version}-full-install-osx-installer.dmg"
  name "MPLab XC32 Compiler"
  desc "Compiler for 32-bit PIC and SAM MCUs and MPUs"
  homepage "https://www.microchip.com/mplab/compilers"

  livecheck do
    url "https://www.microchip.com/mplabxc32osx"
    strategy :header_match
  end

  installer script: {
    executable: "xc32-v#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
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
  binary "#{staged_path}/bin/xc32-addr2line"
  binary "#{staged_path}/bin/xc32-ar"
  binary "#{staged_path}/bin/xc32-as"
  binary "#{staged_path}/bin/xc32-bin2hex"
  binary "#{staged_path}/bin/xc32-c++"
  binary "#{staged_path}/bin/xc32-c++filt"
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
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
