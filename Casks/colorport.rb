cask 'colorport' do
  version '2.0.5'
  sha256 'ae176e3118ba55b4dd8a0716707d149a4e13827b30cdc3f1d29bc329a0ef4bd0'

  url "http://downloads.xrite.com/downloads/software/ColorPort/v#{version}/ColorPort#{version.no_dots}.zip"
  name 'ColorPort Utility Software'
  homepage 'http://www.xrite.com/service-support/product-support/formulation-and-qc-software/ColorPort-Utility-Software'

  pkg "ColorPort#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}Distribution.mpkg"

  uninstall pkgutil: 'com.xrite.colorport'

  caveats do
    discontinued
    reboot
  end
end
