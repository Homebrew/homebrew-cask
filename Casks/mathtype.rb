cask "mathtype" do
  version "7.4.4"
  sha256 "5c035a10ac85dd86981c3c3523a75388cbf5938ad7f52be4ec401eaabdc5fb31"

  url "https://store.wiris.com/en/products/downloads/mathtype/installer/mac/en"
  appcast "https://docs.wiris.com/en/mathtype/release_notes/start"
  name "MathType"
  homepage "http://www.wiris.com/en/mathtype"

  installer manual: "MathType-mac-en.pkg"

  uninstall pkgutil: "com.dessci.mathtype#{version.no_dots}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.major}"
end
