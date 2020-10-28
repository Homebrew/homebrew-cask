cask "bluejeans" do
  version "2.24.0.188"
  sha256 "340c75c6cc28268ad2ddc7dfdfdbf1d9097de294b225d120504abe9b8762223e"

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
