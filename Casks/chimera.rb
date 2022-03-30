cask "chimera" do
  version "1.16"
  sha256 "1ab2072085e2fbed6d3be354bb66a9344273ab1f8735bc24c4f43d524b1b137c"
  url "https://www.cgl.ucsf.edu/chimera/cgi-bin/secure/chimera-get.py?ident=OHeQer2WTaxn%2F%2BtrtntC7uBgvUNERNj83xx10gPggO4u&file=mac64%2Fchimera-#{version}-mac64.dmg&choice=Notified"
  name "Chimera"
  desc "Visualization and analysis of molecular structures"
  homepage "https://www.cgl.ucsf.edu/chimera/"

  livecheck do
    url "https://www.cgl.ucsf.edu/chimera/download.html"
    strategy :page_match
    regex(/chimera[._-](\d+(?:\.\d+)+)[._-]mac64.dmg/i)
  end

  app "Chimera.app"
end
