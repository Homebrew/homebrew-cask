cask 'pl2303' do
  version '1.6.0_20151022'
  sha256 'ed0d7965c57e6d855e1909e0af7228372bedb0ae47247a00c5eea519b5dde6bb'

  url "http://www.prolific.com.tw/UserFiles/files/PL2303_MacOSX_#{version.gsub('.', '_')}.zip"
  name 'Prolific USB-Serial Cable driver'
  homepage 'http://www.prolific.com.tw'
  license :closed

  pkg "PL2303_MacOSX_v#{version}.pkg"

  uninstall pkgutil: "com.prolific.prolificUsbserialCableDriverV#{version.gsub('.', '_')}.ProlificUsbSerial.pkg",
            kext:    'com.prolific.driver.PL2303',
            delete:  [
                       '/System/Library/Extensions/ProlificUsbSerial.kext',
                       '/var/db/receipts/*PL2303*.*',
                       '/var/db/receipts/*ProlificUSbSerial*.*',
                     ]
end
