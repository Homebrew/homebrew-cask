cask "geneious-prime" do
  version "2022.0.2"
  sha256 "4bfaecea716d6f3ddde3aff733e05f9524cffaa5004192338830c326209d3b7a"

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
