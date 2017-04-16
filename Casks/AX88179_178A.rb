class Ax88179_178a < Cask
  version '2.0.0'
  sha256 '26b3dac14839d93db175c5a5d11083578f3171333f8f7d6574cde389cf58a991'

  url 'http://www.asix.com.tw/FrootAttach/driver/AX88179_178A_Macintosh_10.6_to_10.9_Driver_Installer_v2.0.0_20140610.zip'
  homepage 'http://www.asix.com.tw/download.php?sub=driverdetail&PItemID=131'

  nested_container 'AX88179_178A_Macintosh_10.6_to_10.9_Driver_Installer_v2.0.0_20140610/AX88179_178A.dmg'
  install 'AX88179_178A_v2.0.0.pkg'
  uninstall :kext => 'AX88179_178A.kext',
            :pkgutil => 'com.asix.pkg.ax88179-178a-10.9',
            :script => 'AX88179_178A_Uninstall_v140'

  caveats do
    reboot
  end
end
