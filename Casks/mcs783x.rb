cask :v1 => 'mcs783x' do
  version '1.1.0'
  sha256 'ea1d6245b5accabf041060886f16cc00b43d3e6e7e032f4154b487e96ab05569'

  module Utils
    def self.basename
      "MCS783x_Mac_OSX_10.5_to_10.7_driver_v#{Module.nesting.last.version}_Binary"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename}.zip"
  homepage 'http://www.asix.com.tw/products.php?op=ProductList&PLine=74&PSeries=109'
  license :unknown

  container :nested => "#{Utils.basename}/MCS7830_v#{version}.dmg"
  pkg "MCS7830 v#{version}.pkg"
  # todo, is "uninstal" below (one "l") a typo, or is that really the
  # file in the package?

  uninstall :script => { :executable => 'uninstal driver' },
            :pkgutil => 'asix.com.moschipUsbEthernet.pkg'
end
