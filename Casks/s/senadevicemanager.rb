cask "senadevicemanager" do
  version "4.4.12"
  sha256 "97b9f94b9f8aa241577910c4a070560613932f59a5ae657752f3241e06439d1c"

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
