cask "mathtype" do
  version "7.4.4"
  sha256 :no_check

  url "https://store.wiris.com/en/products/downloads/mathtype/installer/mac/en"
  appcast "https://docs.wiris.com/en/mathtype/release_notes/start"
  name "MathType"
  homepage "http://www.wiris.com/en/mathtype"

  installer manual: "MathType-mac-en.pkg"

  uninstall pkgutil: "com.dessci.mathtype#{version.no_dots}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.major}"
end
