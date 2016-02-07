cask 'ax88772' do
  version '2.4.0_20151117'
  sha256 'cc336a77ed35ab6b9972f76fb2a4c77650072c2844fd1632a1875b035a311c6f'

  module Utils
    def self.basename(version)
      "AX88772C_772B_772A_760_772_Macintosh_10.5_to_10.11_Driver_Installer_v#{version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename(version)}.zip"
  name 'AX88772'
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=86;71;101&PLine=71'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container nested: "#{Utils.basename(version)}/AX88772.dmg"

  pkg "AX88772_v#{version.major_minor_patch}.pkg"

  uninstall script: { executable: 'AX88772C_772B_772A_760_772_Uninstall_v130' }
end
