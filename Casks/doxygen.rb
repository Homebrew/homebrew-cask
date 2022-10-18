cask "doxygen" do
  version "1.9.5"
  sha256 "9c35b154b831d9e63874d0fe0d557522a7d85556dc1d4e10da1cde729f3e51c5"

  url "https://doxygen.nl/files/Doxygen-#{version}.dmg"
  name "Doxygen"
  desc "Generate documentation from source code"
  homepage "https://www.doxygen.nl/"

  livecheck do
    url "https://www.doxygen.nl/download.html"
    regex(%r{href=.*?/Doxygen-(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Doxygen.app"
end
