cask "mplab-xc8" do
  version "2.31"
  sha256 "8e7b6dc163cc65df92598cec77129b7e762f8d0f835424a44157e16780dade0f"

  url "https://ww1.microchip.com/downloads/en/DeviceDoc/xc8-v#{version}-full-install-macos-x64-installer.dmg"
  name "MPLab XC8 Compiler"
  homepage "https://www.microchip.com/mplab/compilers"

  livecheck do
    url "https://www.microchip.com/mplabxc8osx"
    strategy :header_match
  end

  installer script: {
    executable: "xc8-v#{version}-full-install-macos-x64-installer.app/Contents/MacOS/installbuilder.sh",
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
  binary "#{staged_path}/bin/xc-ccov"
  binary "#{staged_path}/bin/xc8"
  binary "#{staged_path}/bin/xc8-ar"
  binary "#{staged_path}/bin/xc8-cc"
  binary "#{staged_path}/bin/xclm"

  postflight do
    set_ownership staged_path.to_s
  end

  uninstall script: {
    executable: "Uninstall-xc8-v#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
