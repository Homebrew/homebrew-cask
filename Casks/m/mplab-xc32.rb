cask "mplab-xc32" do
  version "4.40"
  sha256 "4463c2c7e191121dfbb103f40dc9ddbe1ef930fecd1d1bc12a574600e8ee4264"

  url "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc32-v#{version}-full-install-osx-installer.dmg"
  name "MPLab XC32 Compiler"
  desc "Compiler for 32-bit PIC and SAM MCUs and MPUs"
  homepage "https://www.microchip.com/mplab/compilers"

  livecheck do
    url "https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers/xc32"
    regex(%r{href=.*?ProductDocuments/SoftwareTools/xc32[._-]v?(\d+(?:\.\d+)+)-full-install-osx-installer\.dmg}i)
  end

  # The upstream install script doesn't work on ARM processors, so call the installer directly
  installer script: {
    executable: "xc32-v#{version}-osx-installer.app/Contents/MacOS/MPLAB XC32 Compiler",
    args:       [
      "osx-x86_64",
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

  # The upstream uninstall script doesn't work on ARM processors, so call the uninstaller directly
  uninstall script: {
    executable: "#{staged_path}/Uninstall-xc32-v#{version}.app/Contents/MacOS/Uninstall-xc32-v#{version}",
    args:       [
      "osx-x86_64",
      "--mode", "unattended"
    ],
    sudo:       true,
  }

  caveats do
    requires_rosetta
  end
end
