cask 'ax88179' do
  version '2.6.1_20160128'
  sha256 '278f6a0688e4c08f701e9e31a8c8d04d1f7a91dfa30d7916d71589b85a181314'

  module Utils
    def self.basename(version)
      "AX88179_178A_Macintosh_10.6_to_10.11_Driver_Installer_v#{version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename(version)}.zip"
  name 'AX88179'
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=131;71;112&PLine=71'
  license :gratis

  container nested: "#{Utils.basename(version)}/AX88179_178A.dmg"

  pkg "AX88179_178A_v#{version[0..-10]}.pkg"

  uninstall script: { executable: 'AX88179_178A_Uninstall_v140' }
end
