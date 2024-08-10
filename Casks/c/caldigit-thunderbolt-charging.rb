cask "caldigit-thunderbolt-charging" do
  version "1.2"
  sha256 :no_check

  url "https://downloads.caldigit.com/CalDigit-Thunderbolt-Station-Mac-Drivers.zip"
  name "CalDigit Thunderbolt Station USB Charging & SuperDrive Support Driver"
  desc "Improved Apple device support"
  homepage "https://www.caldigit.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "CalDigit-Thunderbolt-Station-Mac-Drivers.pkg"

  uninstall kext:    "com.CalDigit.ThunderboltStationChargingSupport",
            pkgutil: [
              "com.CalDigit.CalDigitThunderboltStationChargingSupport*.pkg",
              "com.CalDigit.ThunderboltStation3ChargingSupport.pkg",
            ],
            delete:  "/Library/Extensions/CalDigitThunderboltStationChargingSupport.kext"

  caveats do
    requires_rosetta
    reboot
  end
end
