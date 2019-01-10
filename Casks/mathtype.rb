cask 'mathtype' do
  version '7.4.1'
  sha256 '7f196f96d27b6505195f1b859adbe443b4895380ea7143a366ad2b42f186f9d2'

  url 'https://store.wiris.com/en/products/downloads/mathtype/installer/mac/en'
  appcast 'https://docs.wiris.com/en/mathtype/release_notes/start'
  name 'MathType'
  homepage 'http://www.wiris.com/en/mathtype'

  installer manual: 'MathType-mac-en.pkg'

  uninstall pkgutil: "com.dessci.mathtype#{version.no_dots}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.major}"
end
