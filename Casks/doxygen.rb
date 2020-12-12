cask "doxygen" do
  version "1.8.20"
  sha256 "06c6632f1ac7242a80d148af4867007b0e458fc9b4829b84b4a970ce7c4d3677"

  url "https://doxygen.nl/files/Doxygen-#{version}.dmg"
  appcast "https://www.doxygen.nl/download.html"
  name "Doxygen"
  homepage "https://www.doxygen.nl/"

  app "Doxygen.app"
end
