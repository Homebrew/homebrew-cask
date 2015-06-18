cask :v1 => 'ax88772' do
  version '2.4.0_20141215'
  sha256 'b9b2162f19d4a563071ef1eaa92f0bd2b2fa224eba721122366025e8be5ce907'

  module Utils
    def self.basename
      "AX88772C_772B_772A_760_772_Macintosh_10.5_to_10.10_Driver_Installer_v#{Module.nesting.last.version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename}.zip"
  name 'AX88772'
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=86;71;101&PLine=71'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => "#{Utils.basename}/AX88772.dmg"
  pkg "AX88772_v#{version[0..-10]}.pkg"

  uninstall :script => { :executable => 'AX88772C_772B_772A_760_772_Uninstall_v130' }
end
