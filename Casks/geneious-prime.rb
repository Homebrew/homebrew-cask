cask "geneious-prime" do
  version "2022.0.1"
  sha256 "23fe3457585632b334664b272be0ac44e3fe5c5b350fda2075a02256a7e3dc1e"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name "Geneious Prime"
  desc "Bioinformatics software platform"
  homepage "https://www.geneious.com/"

  livecheck do
    url "https://www.geneious.com/download/"
    regex(/Prime\s*(\d+(?:\.\d+)+)/i)
  end

  app "Geneious Prime.app"
end
