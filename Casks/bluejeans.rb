cask "bluejeans" do
  version "2.24.0.184"
  sha256 "500e286c568d03087df53ca1611b1e098401e677e6348272b3a5d1e899775dd9"

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
