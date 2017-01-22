cask 'eagle' do
  version '7.7.0'
  sha256 '4f6aae6e2b56f3da4bd24940ac4f09e838a2b3105c5ff506b80825a8a1250022'

  # cadsoft.de was verified as official when first introduced to the cask
  url "http://web.cadsoft.de/ftp/eagle/program/#{version.sub(%r{\.\d+$}, '')}/eagle-mac64-#{version}.zip"
  name 'CadSoft EAGLE'
  homepage 'http://www.autodesk.com/products/eagle/overview'

  pkg "eagle-mac64-#{version}.pkg"

  uninstall pkgutil: 'com.CadSoftComputerGmbH.EAGLE',
            delete:  "/Applications/EAGLE-#{version}"
end
