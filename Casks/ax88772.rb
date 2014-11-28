cask :v1 => 'ax88772' do
  version '2.3.0'
  sha256 '94d3916c4ad0c06bce827cb2fbcc17e09168530a475db6e2b1d857fc289fcc1b'

  module Utils
    def self.basename
      "AX88772C_772B_772A_760_772_Macintosh_10.5_to_10.10_Driver_Installer_v#{Ax88772.version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename}.zip"
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=86;71;101&PLine=71'
  license :unknown

  container :nested => "#{Utils.basename}/AX88772.dmg"
  pkg "AX88772_v#{version}.pkg"

  uninstall :script => { :executable => 'AX88772C_772B_772A_760_772_Uninstall_v130' }
end
