cask "senadevicemanager" do
  version "4.4.16"
  sha256 "31e04ee6f6ac47c21687ec8046b2e27a554db07886dbd7ff59de77a11ff3983f"

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
