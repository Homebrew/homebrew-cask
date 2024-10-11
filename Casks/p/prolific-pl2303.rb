cask "prolific-pl2303" do
  version "2.2.5,20240808"
  sha256 "cb83f3d4d6102325a4daedb1e34acdda740d0f4798e21654b721202e9d192b36"

  url "https://www.prolific.com.tw/UserFiles/files/PL2303HXD_G_Mac%20Driver_v#{version.csv.first.dots_to_underscores}_#{version.csv.second}_pkg.zip"
  name "Prolific USB to Serial Cable driver"
  desc "PL2303 USB-to-serial driver"
  homepage "https://www.prolific.com.tw/US/"

  livecheck do
    url "https://www.prolific.com.tw/US/ShowProduct.aspx?pcid=41"
    regex(/href=.*?PL2303HXD_G_Mac\s*Driver[._-]v?(\d+(?:[._]\d+)+)[_-](\d+)[._-]pkg\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  pkg "PL2303HXD_G_Mac Driver_v#{version.csv.first}_#{version.csv.second}.pkg"

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
