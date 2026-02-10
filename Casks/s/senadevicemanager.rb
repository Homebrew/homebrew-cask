cask "senadevicemanager" do
  version "4.4.18"
  sha256 "03bc4693c4eba7f52eb5a7841ae9db427fb25d57066a31572d38129aa81bb8a4"

  url "https://firmware.sena.com/senabluetoothmanager/SENADeviceManagerForMAC-v#{version}.pkg"
  name "Sena Bluetooth Device Manager"
  desc "Manager for SENA devices"
  homepage "https://www.sena.com/support/apps/"

  livecheck do
    url "https://firmware.sena.com/senabluetoothmanager/Software"
    regex(/SENADeviceManagerForMAC[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

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
