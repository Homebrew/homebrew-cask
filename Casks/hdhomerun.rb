cask "hdhomerun" do
  version "20230726"
  sha256 "2d2beedd112ca155316e150a66c9e2ab01bb14d2a1223d14d4f4259f0c32187d"

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  name "HDHomeRun"
  desc "Client for HDHomeRun streamer"
  homepage "https://www.silicondust.com/support/downloads/"

  livecheck do
    url "https://download.silicondust.com/hdhomerun/hdhomerun_mac.dmg"
    strategy :header_match
  end

  pkg "HDHomeRun Installer.pkg"

  uninstall pkgutil: "com.silicondust.*hdhomerun"

  zap trash: [
    "~/Library/Caches/com.silicondust.hdhomerun",
    "~/Library/Saved Application State/com.silicondust.hdhomerun.savedState",
    "~/Library/WebKit/com.silicondust.hdhomerun",
  ]
end
