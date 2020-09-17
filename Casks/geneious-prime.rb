cask "geneious-prime" do
  version "2020.2.3"
  sha256 "5c2f3e5cee9188bb6009545e4fe533cc5ade1f0e9121c4f8c56ab52ff155b8aa"

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast "https://www.geneious.com/download/"
  name "Geneious Prime"
  homepage "https://www.geneious.com/"

  app "Geneious Prime.app"
end
