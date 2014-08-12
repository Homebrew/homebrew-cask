class Ax88179 < Cask
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=131;71;112&PLine=71'

  version '2.0.0_20140610'
  basename = "AX88179_178A_Macintosh_10.6_to_10.9_Driver_Installer_v#{version}"

  url "http://www.asix.com.tw/FrootAttach/driver/#{basename}.zip"
  sha256 '26b3dac14839d93db175c5a5d11083578f3171333f8f7d6574cde389cf58a991'

  nested_container "#{basename}/AX88179_178A.dmg"
  install "AX88179_178A_v#{version[0..-10]}.pkg"
  uninstall :script => { :executable => 'AX88179_178A_Uninstall_v140' }
end
