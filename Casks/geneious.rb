cask 'geneious' do
  version '11.1.5'
  sha256 '8be154ed47e0476717a7194476817ee48601370cb8471cedd4df7fc1a6694712'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious'
  homepage 'https://www.geneious.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Geneious.app'
end
