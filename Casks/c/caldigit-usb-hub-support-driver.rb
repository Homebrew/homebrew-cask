cask "caldigit-usb-hub-support-driver" do
  version "4.2,1"
  sha256 :no_check

  url "https://downloads.caldigit.com/CalDigit-USB-Hub-Support-Driver.pkg.zip"
  name "CalDigit USB Hub Support Driver"
  desc "Apple SuperDrive, Apple Keyboard, and Improved iPhone/iPad Charging"
  homepage "https://www.caldigit.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on :macos

  pkg "CalDigit-USB-Hub-Support-Driver.pkg"

  uninstall kext:    "com.CalDigit.USBHubSupport",
            pkgutil: "com.CalDigit.USBHubSupport.pkg",
            delete:  "/Library/Extensions/CalDigitUSBHubSupport.kext"

  # No zap stanza required

  caveats do
    reboot
    kext
  end
end
