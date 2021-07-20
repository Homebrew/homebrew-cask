cask "scidvsmac" do
  version "4.22"
  sha256 "31b12bd5598262d9f00c87020c24635506f55ad126c7de7e23736d8476672eee"

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
