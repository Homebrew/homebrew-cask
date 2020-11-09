cask "bluejeans" do
  version "2.25.0.223"
  sha256 "58c4fb573fbd60bfa2dcaf3e673392c30dc22d2eae34f753ebc05a5702e94346"

  url "https://swdl.bluejeans.com/desktop-app/mac/#{version.major_minor_patch}/#{version}/BlueJeansInstaller.pkg"
  appcast "https://www.bluejeans.com/downloads"
  name "BlueJeans"
  desc "Video conferencing for the digital workplace"
  homepage "https://www.bluejeans.com/"

  pkg "BlueJeansInstaller.pkg"

  uninstall pkgutil: [
    "com.bluejeansnet.blue.pkg",
    "com.tatvikmohit.BlueJeans-Audio",
  ]
end
