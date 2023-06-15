cask "bluejeans" do
  version "2.43.0.258"
  sha256 "6b6ee9ecc26bab1a54607e8139ac82c9e23acc3fb004aa1a547c2b029c53695e"

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
