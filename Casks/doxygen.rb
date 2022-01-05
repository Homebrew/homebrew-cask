cask "doxygen" do
  version "1.9.3"
  sha256 "1507f95600b87897e6fadd8e5ef204c80d1c8902c255381e3961bdd6ba5e6503"

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
