cask "senabluetoothdevicemanager" do
  version "4.4.6"
  sha256 "66bdd1bbde69aa132291ddc4113e058c9300853bd17041644ff00d0010140cd6"

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
