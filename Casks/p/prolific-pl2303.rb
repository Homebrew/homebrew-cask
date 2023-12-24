cask "prolific-pl2303" do
  version "2.1.0_20210311"
  sha256 "02b83dc67c06edc6908cd56dc5032689aff39666b27e8c8b9ad83d3f013cc14d"

  url "https://www.prolific.com.tw/UserFiles/files/PL2303HXD_G_Mac%20Driver_v#{version.dots_to_underscores}.zip"
  name "Prolific USB to Serial Cable driver"
  desc "PL2303 USB-to-serial driver"
  homepage "https://www.prolific.com.tw/US/"

  livecheck do
    url "https://www.prolific.com.tw/US/ShowProduct.aspx?p_id=229&pcid=41"
    regex(/PL2303HXD_G_Mac\s*Driver_v?(\d+(?:\.\d+)*_\d+)\.zip/i)
  end

  pkg "PL2303HXD&G_Mac Driver_v#{version}.pkg"

  uninstall quit:    "com.prolific.PLVCDriver",
            kext:    "com.prolific.driver.PL2303",
            pkgutil: [
              "com.Susteen.driver.PL2303",
              "com.prolific.driver.PL2303",
              "com.prolific.pkg.PLVCDriver",
            ],
            delete:  [
              "/Library/Extensions/ProlificUsbSerial.kext",
              "/var/db/receipts/*PL2303*.*",
              "/var/db/receipts/*ProlificUSbSerial*.*",
            ]
end
