cask "geneious-prime" do
  version "2021.2.1"
  sha256 "8d41d64d2551fb432ff15944675241bbea40160c9567c74c50691214862d1d5a"

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
