cask "bluejeans" do
  version "2.23.0.226"
  sha256 "b6eb3d17fd10332a91b679ecd0a269447428c2a4dae26c1f013da31b3818e135"

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
