cask "hdhomerun" do
  version "20250623"
  sha256 "eb03a672da71d99e3541d1b9a4ab5f87559af38135eef9c0f1630f8568cacd9c"

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
