cask "scidvsmac" do
  version "4.23"
  sha256 "dd50dc3923375a61eebeb0b425aa16ef100bb7d49b5233504961ba8839681df3"

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
