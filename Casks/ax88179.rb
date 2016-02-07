cask 'ax88179' do
  version '2.6.0_20150820'
  sha256 '50b9754649cb9f67a1a911ff07e49c3fc5ac931c49f28dc3235adb95d31e3323'

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
