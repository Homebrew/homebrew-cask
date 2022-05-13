cask "bluejeans" do
  version "2.35.0.220"
  sha256 "936a9bcf2ded4f78e515a7908ae14be0cdc009e377c2d7f23e98457c6a5504e8"

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
