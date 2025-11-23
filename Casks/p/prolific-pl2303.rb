cask "prolific-pl2303" do
  version "2.2.11,20250314,2025,07,_-1"
  sha256 "2c4c1ebf8f1eb997cde5c138b881c4389e17069114b6ef3a1aaff53e424465f2"

  url "https://www.prolific.com.tw/wp-content/uploads/#{version.csv.third}/#{version.csv.fourth}/PL2303HXD_G_Mac-Driver_v#{version.csv.first}_#{version.csv.second}.pkg#{version.csv.fifth}.7z"
  name "Prolific USB to Serial Cable driver"
  desc "PL2303 USB-to-serial driver"
  homepage "https://www.prolific.com.tw/US/"

  livecheck do
    url "https://www.prolific.com.tw/portfolio-item/pl2303gc/"
    regex(%r{
      href=.*?/(\d+)/(\d+)/
      PL2303HXD[._-]G[._-]Mac[._-]Driver[._-]v?(\d+(?:\.\d+)+)[_-](\d+)[._-]pkg([._-]+\d+)?\.(?:7z|zip)
    }ix)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        if match[4]
          "#{match[2]},#{match[3]},#{match[0]},#{match[1]},#{match[4]}"
        else
          "#{match[2]},#{match[3]},#{match[0]},#{match[1]}"
        end
      end
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

  # No zap stanza required
end
