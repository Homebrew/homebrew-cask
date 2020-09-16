cask "meshmixer" do
  version "3p5"
  sha256 "ec13996680ea8636c0f4a82386824e73eea8c6a2145f4b16383f167ab5777281"

  url "https://meshmixer.com/downloads/Autodesk_Meshmixer_v#{version}_MacOS.pkg"
  appcast "https://meshmixer.com/download.html"
  name "MeshMixer"
  homepage "https://meshmixer.com/"

  pkg "Autodesk_Meshmixer_v#{version}_macOS.pkg"

  uninstall pkgutil: [
    "com.meshmixer.libmodels.pkg",
    "com.meshmixer.meshmixer09.pkg",
  ]
end
