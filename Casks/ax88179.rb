class Ax88179 < Cask
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=131;71;112&PLine=71'

  version '2.2.0_20140724'
  basename = "AX88179_178A_Macintosh_10.6_to_10.10_Driver_Installer_v#{version}"

  url "http://www.asix.com.tw/FrootAttach/driver/#{basename}.zip"
  sha256 '075cdf5cb5a6ed0e8a4d59ff470a32f5e869f3b2f2b08f268120cbae30c61329'

  nested_container "#{basename}/AX88179_178A.dmg"
  pkg "AX88179_178A_v#{version[0..-10]}.pkg"
  uninstall :script => { :executable => 'AX88179_178A_Uninstall_v140' }
end
