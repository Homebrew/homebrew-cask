class Ax88772 < Cask
  version '2.1.0_20140428'
  sha256 'ea7b2c401855c991cfd9d147632d5bf0478c99a4be034575301eb8549404391f'

  module Utils
    def self.basename
      "AX88772C_772B_772A_760_772_Macintosh_10.5_to_10.9_Driver_Installer_v#{Ax88772.version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename}.zip"
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=86;71;101&PLine=71'
  license :unknown

  nested_container "#{Utils.basename}/AX88772.dmg"
  pkg "AX88772_v#{version[0..-10]}.pkg"
  uninstall :script => { :executable => 'AX88772C_772B_772A_760_772_Uninstall_v130' }
end
