cask 'pl2303' do
  version '1.6.1_20160309'
  sha256 '14868e4a3c38904760d3445c37bbb5ca2f1024498547645147abbabfcb52eb87'

  url "http://www.prolific.com.tw/UserFiles/files/PL2303_MacOSX_#{version.dots_to_underscores}.zip"
  name 'Prolific USB-Serial Cable driver'
  homepage 'http://www.prolific.com.tw'

  pkg "PL2303_MacOSX_#{version}.pkg"

  uninstall pkgutil: "com.prolific.prolificUsbserialCableDriverV#{version.dots_to_underscores}.ProlificUsbSerial.pkg",
            kext:    'com.prolific.driver.PL2303',
            delete:  [
                       '/Library/Extensions/ProlificUsbSerial.kext',
                       '/var/db/receipts/*PL2303*.*',
                       '/var/db/receipts/*ProlificUSbSerial*.*',
                     ]
end
