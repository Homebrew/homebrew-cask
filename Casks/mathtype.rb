cask "mathtype" do
  version "7.17.1"
  sha256 :no_check

  url "https://store.wiris.com/en/products/downloads/mathtype/installer/mac/en"
  name "MathType"
  desc "Write math equations everywhere"
  homepage "https://www.wiris.com/en/mathtype"

  livecheck do
    url "https://docs.wiris.com/en/mathtype/release_notes/start"
    regex(/MathType\s+editor\s+v(\d+(?:\.\d+)+)/i)
  end

  installer manual: "MathType-mac-en.pkg"

  uninstall pkgutil: "com.dessci.mathtype#{version.no_dots}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.major}"
end
