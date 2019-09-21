cask 'mathtype' do
  version '7.11.0'
  sha256 '05efce437d1d00e40384e9ea744b24a4bc6a02983a6fd0216e8008a24d96caf2'

  url 'https://store.wiris.com/en/products/downloads/mathtype/installer/mac/en'
  appcast 'https://docs.wiris.com/en/mathtype/release_notes/start'
  name 'MathType'
  homepage 'http://www.wiris.com/en/mathtype'

  installer manual: 'MathType-mac-en.pkg'

  uninstall pkgutil: "com.dessci.mathtype#{version.no_dots}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.major}"
end
