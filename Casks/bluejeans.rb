cask "bluejeans" do
  version "2.36.0.270"
  sha256 "acf9db2645ab2a545ba8999ae22207de0e4a521e8d464b4e320cd10f98e7a9e0"

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
