cask "geneious-prime" do
  version "2022.2.2"
  sha256 "59412a6b0bb5a7b240582e7185d5733cfeca6d84d90ebf6c484d6506e8dce44b"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name "Geneious Prime"
  desc "Bioinformatics software platform"
  homepage "https://www.geneious.com/"

  livecheck do
    url "https://www.geneious.com/download/"
    regex(/data-version="Prime\s*(\d+(?:\.\d+)+)/i)
  end

  app "Geneious Prime.app"
end
