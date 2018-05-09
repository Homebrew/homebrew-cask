cask 'geneious' do
  version '11.1.4'
  sha256 'c7bde6956e7dd35178d60c5fa7aca5f0475cff0fc9e9ab35f492eae8c9f39aea'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious'
  homepage 'https://www.geneious.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Geneious.app'
end
