cask :v1 => 'pl2303' do
  version '1.5.1'
  sha256 '101058b71da6a6bd038b05abef0e556bd3203fcd04f35d545fd711c5d34d46c2'

  url "http://prolificusa.com/files/md_PL2303_MacOSX_10.6-10.10_v#{version}.zip"
  name 'Prolific USB-Serial Cable driver'
  homepage 'http://www.prolificusa.com'
  license :closed

  pkg "PL2303_MacOSX_v#{version}.pkg"

  depends_on :macos => [:snow_leopard, :lion, :mountain_lion, :mavericks, :yosemite]

  uninstall :pkgutil => "com.prolific.prolificUsbserialCableDriverV#{version.delete('.')}.ProlificUsbSerial.pkg",
            :kext => 'com.prolific.driver.PL2303',
            :delete => [
                        '/System/Library/Extensions/ProlificUsbSerial.kext',
                        '/var/db/receipts/*PL2303*.*',
                        '/var/db/receipts/*ProlificUSbSerial*.*',
                       ]
end
