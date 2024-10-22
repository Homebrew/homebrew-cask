cask "senadevicemanager" do
  version "4.4.10"
  sha256 "55df2f5e9c38d82567bea5b302517d2203adbd8b83ebd9da8c9bfb344485d15f"

  url "https://firmware.sena.com/senabluetoothmanager/SENADeviceManagerForMAC-v#{version}.pkg"
  name "Sena Bluetooth Device Manager"
  desc "Manager for SENA devices"
  homepage "https://www.sena.com/support/apps/"

  livecheck do
    url "https://firmware.sena.com/senabluetoothmanager/Software"
    regex(/SENADeviceManagerForMAC[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :catalina"

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
