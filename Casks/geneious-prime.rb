cask "geneious-prime" do
  version "2022.1.1"
  sha256 "e5cf6f88cc33ecb220c80b3d78a0fedbe35b807442022fd9e7675593b402a5da"

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
