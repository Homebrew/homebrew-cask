cask "senadevicemanager" do
  version "4.4.9"
  sha256 "4c2a4b73f248bb39a940b491b6e3b1a3955fc9782bf90c253fecb61d40ea0d0d"

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

  uninstall quit:    "com.sena.SenaDeviceManager",
            pkgutil: "com.sena.SenaDeviceManager"

  zap trash: [
    "~/Library/Caches/com.sena.SenaDeviceManager",
    "~/Library/HTTPStorages/com.sena.SenaDeviceManager",
    "~/Library/WebKit/com.sena.SenaDeviceManager",
  ]

  caveats do
    requires_rosetta
  end
end
