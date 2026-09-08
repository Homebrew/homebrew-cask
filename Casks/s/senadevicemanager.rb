cask "senadevicemanager" do
  version "4.4.19"
  sha256 "7f1bb3cd1b063b4d81466743bd843fde431d9b6161861d58db0e0ce214e970be"

  url "https://firmware.sena.com/senabluetoothmanager/SENADeviceManagerForMAC-v#{version}.pkg"
  name "Sena Bluetooth Device Manager"
  desc "Manager for SENA devices"
  homepage "https://www.sena.com/support/apps/"

  livecheck do
    url "https://firmware.sena.com/senabluetoothmanager/Software"
    regex(/SENADeviceManagerForMAC[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on :macos

  pkg "SENADeviceManagerForMAC-v#{version}.pkg"

  uninstall quit:    [
              "com.sena.SenaBluetoothDeviceManager",
              "com.sena.SenaDeviceManager",
            ],
            pkgutil: [
              "com.sena.SenaBluetoothDeviceManager",
              "com.sena.SenaDeviceManager",
            ]

  zap trash: [
    "~/Library/Caches/com.sena.SenaDeviceManager",
    "~/Library/HTTPStorages/com.sena.SenaDeviceManager",
    "~/Library/WebKit/com.sena.SenaDeviceManager",
  ]

  caveats do
    requires_rosetta
  end
end
