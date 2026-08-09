cask "mplab-xc8" do
  version "4.00"
  sha256 "b3a95dbbb95a3d02648cb796a45f7a8687827d9eb10eadb36b5645af0d623025"

  url "https://ww1.microchip.com/downloads/aemDocuments/documents/DEV/ProductDocuments/SoftwareTools/xc8-v#{version}-full-install-macos-x64-installer.dmg"
  name "MPLab XC8 Compiler"
  desc "Compiler for 8-bit PIC and SAM MCUs and MPUs"
  homepage "https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers/xc8"

  livecheck do
    url "https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers/xc8",
        user_agent: :browser
    regex(%r{href=.*?ProductDocuments/SoftwareTools/xc8[._-]v?(\d+(?:\.\d+)+)-full-install-macos-x64-installer\.dmg}i)
  end

  depends_on :macos

  installer script: {
    executable: "xc8-v#{version}-full-install-macos-x64-installer.app/Contents/MacOS/installbuilder.sh",
    args:       [
      "--mode", "unattended",
      "--ModifyAll", "0",
      "--prefix", staged_path.to_s
    ],
    input:      ["y"],
    sudo:       true,
  }
  binary "#{staged_path}/bin/xc-ccov"
  binary "#{staged_path}/bin/xc8-ar"
  binary "#{staged_path}/bin/xc8-cc"
  binary "#{staged_path}/bin/xc8-clangd"

  postflight_steps do
    set_ownership "."
  end

  uninstall script: {
    executable: "Uninstall-xc8-v#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  # No zap stanza required
end
