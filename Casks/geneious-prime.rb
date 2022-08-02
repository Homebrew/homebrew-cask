cask "geneious-prime" do
  version "2022.2.1"
  sha256 "d37a945f8f9bc998b8339207993cabbe3583fdc199ef6f4f5c5a9faf715b0426"

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
