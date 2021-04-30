cask "geneious-prime" do
  version "2021.1.1"
  sha256 "556bd07e1404681ec137296c61aed896aea6b0ab6fb7fb1a326923de62c1e88a"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name "Geneious Prime"
  desc "Bioinformatics software platform"
  homepage "https://www.geneious.com/"

  livecheck do
    url "https://www.geneious.com/download/"
    strategy :page_match
    regex(/Prime\s*(\d+(?:\.\d+)*)/i)
  end

  app "Geneious Prime.app"
end
