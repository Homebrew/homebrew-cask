class ProlificUsbSerialDriver < Cask
  url 'http://pbxbook.com/other/sw/PL2303_MacOSX_v1_5_1.zip'
  homepage 'http://pbxbook.com/other/mac-tty.html'
  version '1.5.1'
  sha1 'e251e2a3da821d8ed8124e78181a78e5f57dc046'
  install 'PL2303_MacOSX-10_6up_v1_5_1/PL2303_MacOSX_v1.5.1.pkg'
  uninstall :pkgutil => 'com.prolific.prolificUsbserialCableDriverV151.ProlificUsbSerial.pkg',
  			:kext => 'com.prolific.driver.PL2303'
end
