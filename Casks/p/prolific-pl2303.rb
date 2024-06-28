cask "prolific-pl2303" do
  version "2.2.2_20221228"
  sha256 "46983d662c07ef8e734aed9f81e4a6112b1eb4857e1f02bacd0138ac6eace979"

  url "https://www.prolific.com.tw/UserFiles/files/PL2303HXD_G_Mac%20Driver_v#{version.dots_to_underscores}.zip"
  name "Prolific USB to Serial Cable driver"
  desc "PL2303 USB-to-serial driver"
  homepage "https://www.prolific.com.tw/US/"

  livecheck do
    url "https://www.prolific.com.tw/US/ShowProduct.aspx?pcid=41"
    regex(/PL2303HXD_G_Mac\s*Driver_v?(\d+(?:\.\d+)*_\d+)\.zip/i)
  end

  pkg "PL2303HXD_G_Mac Driver_v#{version}.pkg"

  uninstall quit:    [
              "com.prolific.cdc.PLCdcFSDriver",
              "com.prolific.PLVCDriver",
            ],
            kext:    "com.prolific.driver.PL2303",
            pkgutil: [
              "com.prolific.driver.PL2303",
              "com.prolific.pkg.PLFSDriver",
              "com.prolific.pkg.PLVCDriver",
              "com.Susteen.driver.PL2303",
            ],
            delete:  [
              "/Library/Extensions/ProlificUsbSerial.kext",
              "/var/db/receipts/*PL2303*.*",
              "/var/db/receipts/*ProlificUSbSerial*.*",
            ]
end
