cask 'ax88772' do
  version '2.4.1_20160202'
  sha256 'b7fadf39110b7ad8c4792bfd04767bb24027db2fe99948d7af4c097817e9afb1'

  module Utils
    def self.basename(version)
      "AX88772C_772B_772A_760_772_Macintosh_10.5_to_10.11_Driver_Installer_v#{version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename(version)}.zip"
  name 'AX88772'
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=86;71;101&PLine=71'
  license :gratis

  container nested: "#{Utils.basename(version)}/AX88772.dmg"

  pkg "AX88772_v#{version.major_minor_patch}.pkg"

  uninstall script: {
                      executable: 'AX88772C_772B_772A_760_772_Uninstall_v130',
                      sudo:       false,
                    }
end
