cask "senabluetoothdevicemanager" do
  version "4.4.7"
  sha256 "91c5a7bbea693e774969366195509ea04f42f41a0ca72012802df582c42ae5f9"

  url "https://firmware.sena.com/senabluetoothmanager/SENABluetoothDeviceManagerForMAC-v#{version}.pkg"
  name "Sena Bluetooth Device Manager"
  desc "Manager for SENA devices"
  homepage "https://www.sena.com/us-en/support/software"

  livecheck do
    url "https://firmware.sena.com/senabluetoothmanager/Software"
    regex(/SENABluetoothDeviceManagerForMAC[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :catalina"

  pkg "SENABluetoothDeviceManagerForMAC-v#{version}.pkg"

  uninstall quit:    "com.sena.SenaBluetoothDeviceManager",
            pkgutil: "com.sena.SenaBluetoothDeviceManager",
            delete:  "/Applications/SenaBluetoothDeviceManager.app"

  zap trash: [
    "~/Library/Caches/com.sena.SenaBluetoothDeviceManager",
    "~/Library/HTTPStorages/com.sena.SenaBluetoothDeviceManager",
    "~/Library/WebKit/com.sena.SenaBluetoothDeviceManager",
  ]

  caveats do
    requires_rosetta
  end
end
