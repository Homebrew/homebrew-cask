cask "geneious-prime" do
  version "2020.2.4"
  sha256 "9a5784d3ca90ed16d153f5cb36276ee59886c1d55802d34d7f0d7bcbfb974bc7"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast "https://www.geneious.com/download/"
  name "Geneious Prime"
  homepage "https://www.geneious.com/"

  app "Geneious Prime.app"
end
