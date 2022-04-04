cask "pycom-firmware-updater" do
  version "1.0.3"
  sha256 :no_check

  url "https://github.com/pycom/pycom-firmware-updater/releases/download/v1.0.0/FwUpdater-mac.pkg"
  name "pycom-firmware-updater"
  desc "Desktop app for Pycom Firmware Updater"
  homepage "https://github.com/pycom/pycom-firmware-updater"

  pkg "FwUpdater-mac.pkg"

  uninstall pkgutil: [
    "io.pycom.fwupdater",
  ]
end
