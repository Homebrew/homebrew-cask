cask 'ax88179' do
  version '2.7.0'
  sha256 '8b12ecad1407e65a2bd89f055cfe7f2be102b3623b0b207b55f7f9eac54253e9'

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

  pkg "AX88179_178A_v#{version}.pkg"

  uninstall script: { executable: 'AX88179_178A_Uninstall_v140' }
end
