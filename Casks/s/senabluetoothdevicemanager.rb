cask "senabluetoothdevicemanager" do
  version "4.4.8"
  sha256 "8196e1947f6b2240fcbee9be6578155e0f0493048a2dc02c78dc0c23514d226b"

  url "https://firmware.sena.com/senabluetoothmanager/SENABluetoothDeviceManagerForMAC-v#{version}.pkg"
  name "Sena Bluetooth Device Manager"
  desc "Manager for SENA devices"
  homepage "https://www.sena.com/support/apps/"

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
