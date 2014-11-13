cask :v1 => 'ax88179' do
  version '2.2.0_20140724'
  sha256 '075cdf5cb5a6ed0e8a4d59ff470a32f5e869f3b2f2b08f268120cbae30c61329'

  module Utils
    def self.basename
      "AX88179_178A_Macintosh_10.6_to_10.10_Driver_Installer_v#{Ax88179.version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename}.zip"
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=131;71;112&PLine=71'
  license :unknown

  container :nested => "#{Utils.basename}/AX88179_178A.dmg"
  pkg "AX88179_178A_v#{version[0..-10]}.pkg"
  uninstall :script => { :executable => 'AX88179_178A_Uninstall_v140' }
end
