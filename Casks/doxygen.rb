cask "doxygen" do
  version "1.9.4"
  sha256 "8fca47c9b44de386878d4e65674f70731ceb1ddfb8504546b9a8874ec13effc4"

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
