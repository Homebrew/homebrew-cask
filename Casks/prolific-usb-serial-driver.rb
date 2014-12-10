cask :v1 => 'prolific-usb-serial-driver' do
  version '1.5.1'
  sha256 'b6658605409e9aa63bca7a1ac94c989cc01cdf375f6881ade0ed5bb9694c22cc'

  url "http://www.prolific.com.tw/UserFiles/files/md_PL2303_MacOSX-10_6up_v#{version.gsub('.', '_')}.zip"
  homepage 'http://www.prolific.com.tw/US/ShowProduct.aspx?p_id=229&pcid=41'
  license :unknown    # todo: improve this machine-generated value

  pkg "PL2303_MacOSX_v#{version}.pkg"

  uninstall :pkgutil => 'com.prolific.prolificUsbserialCableDriverV*.ProlificUsbSerial.pkg',
            :kext => 'com.prolific.driver.PL2303'
end
