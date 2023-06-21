cask "bluejeans" do
  version "2.44.0.210"
  sha256 "fd34de77e2531bce91035245b0faa8e959b75847a57a78b5a8c70828a09e5034"

  url "https://swdl.bluejeans.com/desktop-app/mac/#{version.major_minor_patch}/#{version}/BlueJeansInstaller.pkg"
  name "BlueJeans"
  desc "Video conferencing for the digital workplace"
  homepage "https://www.bluejeans.com/"

  livecheck do
    url "https://swdl.bluejeans.com/desktop-app/mac/ga.appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

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
