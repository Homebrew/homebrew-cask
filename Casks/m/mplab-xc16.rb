cask "mplab-xc16" do
  version "2.09"
  sha256 "508a659eae771f59082167f1661c173d3db2cbfab371a2883f21b671f8801872"

  url "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc16-v#{version}-full-install-osx64-installer.dmg"
  name "MPLab XC16 Compiler"
  desc "Compiler for 16-bit PIC and SAM MCUs and MPUs"
  homepage "https://www.microchip.com/mplab/compilers"

  livecheck do
    url "https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers/xc16"
    regex(%r{href=.*?ProductDocuments/SoftwareTools/xc16[._-]v?(\d+(?:\.\d+)+)-full-install-osx64-installer\.dmg}i)
  end

  installer script: {
    executable: "xc16-v#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       [
      "--mode", "unattended",
      "--unattendedmodeui", "none",
      "--ModifyAll", "0",
      "--netservername", '""',
      "--LicenseType", "WorkstationMode",
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
