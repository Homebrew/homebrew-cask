cask "doxygen" do
  version "1.9.1"
  sha256 "df9c647f2d9cad1cd271f00a7662400b3f73e4569abfa231e350b5daaa97fe67"

  url "https://doxygen.nl/files/Doxygen-#{version}.dmg"
  name "Doxygen"
  homepage "https://www.doxygen.nl/"

  livecheck do
    url "https://www.doxygen.nl/download.html"
    strategy :page_match
    regex(%r{href=.*?/Doxygen-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Doxygen.app"
end
