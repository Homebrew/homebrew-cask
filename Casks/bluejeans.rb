cask "bluejeans" do
  version "2.22.0.349"
  sha256 "1f5676a6aebafcfb0416dfca2b14f1f7c4945fccc3d191443d9917624a137570"

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
