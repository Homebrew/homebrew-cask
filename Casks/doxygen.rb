cask "doxygen" do
  version "1.9.1"
  sha256 "df9c647f2d9cad1cd271f00a7662400b3f73e4569abfa231e350b5daaa97fe67"

  url "https://doxygen.nl/files/Doxygen-#{version}.dmg"
  appcast "https://www.doxygen.nl/download.html"
  name "Doxygen"
  homepage "https://www.doxygen.nl/"

  app "Doxygen.app"
end
