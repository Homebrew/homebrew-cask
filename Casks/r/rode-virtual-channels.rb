cask "rode-virtual-channels" do
  version "1.1.1"
  sha256 :no_check

  url "https://update.rode.com/virtual_dev_driver/RODECasterDriver_MACOS.zip"
  name "RODE Virtual Channels"
  desc "Virtual Device Driver for RODECASTER Pro II"
  homepage "https://rode.com/en/user-guides/rodecaster-pro-ii/virtual-devices"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on :macos

  rename "RODE Virtual Channels-*.pkg", "RODE Virtual Channels.pkg"

  pkg "Rode Virtual Channels.pkg"

  uninstall quit:    "com.rode.RODEVirtualChannels",
            pkgutil: [
              "com.rode.pkg.RODEVirtualChannels",
              "com.rode.pkg.RODEVirtualChannelsApp",
              "com.rode.pkg.RODEVirtualChannelsDriver",
              "com.rode.pkg.RODEVirtualChannelsLaunchAgent",
              "com.rode.RodeVirtualChannels.driver",
            ]

  zap trash: "~/Library/Saved Application State/com.rode.RODEVirtualChannels.savedState"
end
