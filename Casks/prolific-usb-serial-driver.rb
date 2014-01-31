class ProlificUsbSerialDriver < Cask
  url 'http://www.prolific.com.tw/UserFiles/files/md_PL2303_MacOSX-10_6up_v1_5_1.zip'
  homepage 'http://www.prolific.com.tw/US/ShowProduct.aspx?p_id=229&pcid=41'
  version '1.5.1'
  sha1 '2e30c876b159f6be76f5a9d58a0cd512fb2a5478'
  install 'md_PL2303_MacOSX-10_6up_v1_5_1/PL2303_MacOSX_v1.5.1.pkg'
  uninstall :pkgutil => 'com.prolific.prolificUsbserialCableDriverV151.ProlificUsbSerial.pkg',
            :kext => 'com.prolific.driver.PL2303'
end
