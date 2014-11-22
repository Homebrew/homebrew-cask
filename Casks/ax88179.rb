cask :v1 => 'ax88179' do
  version '2.3.0_20140929'
  sha256 '269f233cd6fc70ba46dc11ae2bfac7aa4df019e193dededb1e1e56aba1aca699'

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
