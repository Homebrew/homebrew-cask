cask "bluejeans" do
  version "2.42.0.255"
  sha256 "6fa23134df66b55ed600ea84e2900d372194e4e6828cf8a19cf87a2c72373cd6"

  url "https://swdl.bluejeans.com/desktop-app/mac/#{version.major_minor_patch}/#{version}/BlueJeansInstaller.pkg"
  name "BlueJeans"
  desc "Video conferencing for the digital workplace"
  homepage "https://www.bluejeans.com/"

  livecheck do
    url "https://swdl.bluejeans.com/desktop-app/mac/ga.appcast.xml"
    strategy :sparkle
  end

  pkg "BlueJeansInstaller.pkg"

  uninstall pkgutil: [
    "com.bluejeansnet.blue.pkg",
    "com.tatvikmohit.BlueJeans-Audio",
  ]

  zap trash: [
    "~/Library/Application Support/com.bluejeansnet.Blue",
    "~/Library/Caches/com.bluejeansnet.Blue",
    "~/Library/LaunchAgents/com.bluejeansnet.BlueJeansHelper.plist",
    "~/Library/Logs/BlueJeans",
    "~/Library/Preferences/com.bluejeansnet.Blue.plist",
  ]
end
