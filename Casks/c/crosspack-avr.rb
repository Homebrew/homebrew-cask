cask "crosspack-avr" do
  version "2013-12-16"
  sha256 "959f9bf00429a0e46e649a14d7891cb4086c9cf2d032d9f66899d6efbb628f6e"

  url "https://www.obdev.at/downloads/crosspack/CrossPack-AVR-#{version.no_hyphens}.dmg"
  name "CrossPack"
  desc "Development environment for Atmel’s AVR microcontrollers"
  homepage "https://www.obdev.at/products/crosspack/index.html"

  disable! date: "2024-10-29", because: "is 32-bit only"

  pkg "CrossPack-AVR.pkg"

  uninstall script:  {
              executable: "/usr/local/CrossPack-AVR/uninstall",
              input:      ["Yes"],
              sudo:       true,
            },
            pkgutil: "at.obdev.CrossPack-AVR"

  caveats do
    files_in_usr_local
  end
end
