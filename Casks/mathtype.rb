cask 'mathtype' do
  version '7.3.1'
  sha256 '247c6c1bc0439b0273810a82c0b9930f0bc1dbca3ca30b88eb1da78bfef982d6'

  url 'https://store.wiris.com/en/products/downloads/mathtype/installer/mac/en'
  appcast 'https://docs.wiris.com/en/mathtype/release_notes/start'
  name 'MathType'
  homepage 'http://www.wiris.com/en/mathtype'

  installer manual: 'MathType-mac-en.pkg'

  uninstall pkgutil: "com.dessci.mathtype#{version.no_dots}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.major}"
end
