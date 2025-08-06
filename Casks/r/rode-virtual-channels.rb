cask "rode-virtual-channels" do
  version "1.0.0"
  sha256 "00c0b5a2f5f24eb80d4bb0d2e8b5ce2e409fc95ef37099ad7e3f629a4bfd72fe"

  url "https://update.rode.com/virtual_dev_driver/RODECASTERDriver_MACOS_#{version}.zip"
  name "RODE Virtual Channels"
  desc "Virtual Device Driver for RODECASTER Pro II"
  homepage "https://rode.com/en/user-guides/rodecaster-pro-ii/virtual-devices"

  livecheck do
    url :homepage
    regex(/href=.*?RODECASTERDriver[._-]MACOS[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :catalina"

  pkg "RODE Virtual Channels-#{version}.pkg"

  uninstall quit:    "com.rode.RODEVirtualChannels",
            pkgutil: [
              "com.rode.pkg.RODEVirtualChannels",
              "com.rode.pkg.RODEVirtualChannelsApp",
              "com.rode.pkg.RODEVirtualChannelsLaunchAgent",
              "com.rode.RodeVirtualChannels.driver",
            ]

  zap trash: "~/Library/Saved Application State/com.rode.RODEVirtualChannels.savedState"
end
