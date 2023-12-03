cask "senabluetoothdevicemanager" do
  version "4.4.4"
  sha256 "00ece30492bbe9683c637995ca900d3c32c9ace1b4c3c3dc5ebc147d21326031"

  url "https://firmware.sena.com/senabluetoothmanager/SENABluetoothDeviceManagerForMAC-v#{version}.pkg"
  name "Sena Bluetooth Device Manager"
  desc "Manager for SENA devices"
  homepage "https://www.sena.com/us-en/support/software"

  livecheck do
    url :homepage
    regex(/href=.*?senabluetoothdevicemanager.*?[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :catalina"

  pkg "SENABluetoothDeviceManagerForMAC-v#{version}.pkg"

  uninstall quit:    "com.sena.SenaBluetoothDeviceManager",
            pkgutil: "com.sena.SenaBluetoothDeviceManager",
            delete:  "#{appdir}/SenaBluetoothDeviceManager.app"

  zap trash: [
    "~/Library/Caches/com.sena.SenaBluetoothDeviceManager",
    "~/Library/HTTPStorages/com.sena.SenaBluetoothDeviceManager",
    "~/Library/WebKit/com.sena.SenaBluetoothDeviceManager",
  ]

  caveats do
    requires_rosetta
  end
end
