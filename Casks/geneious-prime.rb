cask "geneious-prime" do
  version "2021.0.1"
  sha256 "cf270037994ac8d8b83ca16346cb793b0dbe51ba8647e1b6ac2b6e95d85d3f02"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast "https://www.geneious.com/download/"
  name "Geneious Prime"
  homepage "https://www.geneious.com/"

  app "Geneious Prime.app"
end
