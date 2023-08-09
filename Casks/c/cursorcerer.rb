cask "cursorcerer" do
  version "3.5"
  sha256 :no_check

  url "http://www.doomlaser.com/downloads/Cursorcerer.zip"
  name "Cursorcerer"
  homepage "http://doomlaser.com/cursorcerer-hide-your-cursor-at-will/"

  livecheck do
    url :homepage
    regex(/Cursorcerer\s+(\d+(?:\.\d+)+)/i)
  end

  prefpane "Cursorcerer.prefPane"
end
