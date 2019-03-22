cask 'mathtype' do
  version '7.8.0'
  sha256 'd2b2bfcd37f212edd1d7241d11ecc345cafe6adffcc2fc7a0e1565afb2759e89'

  url 'https://store.wiris.com/en/products/downloads/mathtype/installer/mac/en'
  appcast 'https://docs.wiris.com/en/mathtype/release_notes/start'
  name 'MathType'
  homepage 'http://www.wiris.com/en/mathtype'

  installer manual: 'MathType-mac-en.pkg'

  uninstall pkgutil: "com.dessci.mathtype#{version.no_dots}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.major}"
end
