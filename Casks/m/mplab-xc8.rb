cask "mplab-xc8" do
  version "3.10"
  sha256 "42569224273f43ae3f6a4d14d675766df17b0e99044c316e0b3b49d2d1a14145"

  url "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc8-v#{version}-full-install-macos-x64-installer.dmg"
  name "MPLab XC8 Compiler"
  desc "Compiler for 8-bit PIC and SAM MCUs and MPUs"
  homepage "https://www.microchip.com/mplab/compilers"

  livecheck do
    url "https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers/xc8"
    regex(%r{href=.*?ProductDocuments/SoftwareTools/xc8[._-]v?(\d+(?:\.\d+)+)-full-install-macos-x64-installer\.dmg}i)
  end

  installer script: {
    executable: "xc8-v#{version}-full-install-macos-x64-installer.app/Contents/MacOS/installbuilder.sh",
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
  binary "#{staged_path}/bin/xc-ccov"
  binary "#{staged_path}/bin/xc8-ar"
  binary "#{staged_path}/bin/xc8-cc"
  binary "#{staged_path}/bin/xc8-clangd"
  binary "#{staged_path}/bin/xclm"

  postflight do
    set_ownership staged_path.to_s
  end

  uninstall script: {
    executable: "Uninstall-xc8-v#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  # No zap stanza required
end
