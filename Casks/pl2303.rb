class Pl2303 < Cask
  version '1.5.1'
  sha256 '2f5ad5c88228820b05cb7fe264b50aee63d5bf47e5228c25c870641b774efe5e'

  url "http://www.prolific.com.tw/UserFiles/files/md_PL2303_MacOSX_10_6up_v#{version.gsub('.', '_')}.zip"
  homepage 'http://www.prolific.com.tw/US/ShowProduct.aspx?p_id=229&pcid=41'
  install "PL2303_MacOSX_v#{version}.pkg"
  uninstall :kext => 'com.prolific.driver.PL2303',
            :pkgutil => "com.prolific.prolificUsbserialCableDriverV#{version.gsub('.', '')}.ProlificUsbSerial.pkg"
end
