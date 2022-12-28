cask "doxygen" do
  version "1.9.6"
  sha256 "25ad21fa767bd71208947b848d482b46c6bc523a97ba1aacf803c71c4d043726"

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
