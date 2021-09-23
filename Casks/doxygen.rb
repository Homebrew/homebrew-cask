cask "doxygen" do
  version "1.9.2"
  sha256 "788d56c30ecb1d3f816f3eca31a2e983a7864ed28fce0566143dfb70afed7916"

  url "https://doxygen.nl/files/Doxygen-#{version}.dmg"
  name "Doxygen"
  desc "Generate documentation from source code"
  homepage "https://www.doxygen.nl/"

  livecheck do
    url "https://www.doxygen.nl/download.html"
    strategy :page_match
    regex(%r{href=.*?/Doxygen-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Doxygen.app"
end
