cask "scidvsmac" do
  version "4.21"
  sha256 "985c6bd395a93b14e697ef11ab2c36f4dd1fa374ed8799591ca8eb57c3ad0551"

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  name "Scid vs. Mac"
  desc "Chess toolkit"
  homepage "http://scidvspc.sourceforge.net/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/ScidvsMac-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "ScidvsMac.app"
end
