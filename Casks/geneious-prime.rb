cask "geneious-prime" do
  version "2021.2.2"
  sha256 "0b6b4f09749e91d60cd1e084085b0c31dcdd38fdbb0246b605b20a608458a7c2"

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
