cask "scidvsmac" do
  version "4.23"
  sha256 "01cc4aacd544bfaad7cd75519c5e7041909c2f3a06cd1bc272fe59b0dfafd530"

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.x64.dmg"
  name "Scid vs. Mac"
  desc "Chess toolkit"
  homepage "https://scidvspc.sourceforge.net/"

  livecheck do
    url :homepage
    regex(/ScidvsMac-(\d+(?:\.\d+)*)\.x64\.dmg/i)
  end

  app "ScidvsMac.app"
end
