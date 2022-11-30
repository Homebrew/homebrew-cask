cask "geneious-prime" do
  version "2023.0.1"
  sha256 "3ef8f65e123309d9803496ebcd5840bee522f45446c6136ef3d40f45d0a29a6b"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name "Geneious Prime"
  desc "Bioinformatics software platform"
  homepage "https://www.geneious.com/"

  livecheck do
    url "https://assets.geneious.com/documentation/geneious/release_notes.html"
    regex(/href="#v?(\d+(?:\.\d+)+)">/i)
  end

  app "Geneious Prime.app"
end
