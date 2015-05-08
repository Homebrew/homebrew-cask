cask :v1 => 'mcs783x' do
  version '1.1.0_20141202'
  sha256 'd86bdf6107cec7d3990f6967a5be782f7945cb722f22789cb04051514ba87a10'

  module Utils
    def self.basename
      "MCS783x_Mac_OSX_10.5_to_10.10_driver_v#{Module.nesting.last.version}"
    end
    def self.stripped_version
      Module.nesting.last.version.partition('_').first
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename}.zip"
  name 'ASIX MCS7830/7832 USB to Ethernet Controller Driver'
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=108;71;101&PLine=71'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => "#{Utils.basename}/MCS7830_v#{Utils.stripped_version}.dmg"
  pkg "MCS7830 v#{Utils.stripped_version}.pkg"

  # The "uninstal" (one "l") isn't a typo, that's the exact filename
  uninstall :script => { :executable => 'uninstal driver' },
            :pkgutil => 'asix.com.moschipUsbEthernet.pkg'
end
