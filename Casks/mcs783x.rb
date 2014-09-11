class Mcs783x < Cask
  homepage 'http://www.asix.com.tw/products.php?op=ProductList&PLine=74&PSeries=109'

  version '1.1.0'
  basename = "MCS783x_Mac_OSX_10.5_to_10.7_driver_v#{version}_Binary"

  url "http://www.asix.com.tw/FrootAttach/driver/#{basename}.zip"
  sha256 'ea1d6245b5accabf041060886f16cc00b43d3e6e7e032f4154b487e96ab05569'

  nested_container "#{basename}/MCS7830_v#{version}.dmg"
  pkg "MCS7830 v#{version}.pkg"
  uninstall :script => { :executable => 'uninstal driver' },
            :pkgutil => 'asix.com.moschipUsbEthernet.pkg'
end
