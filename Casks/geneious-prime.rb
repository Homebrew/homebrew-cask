cask 'geneious-prime' do
  version '2019.1.1'
  sha256 '7700c954c56a473e3c1d5b7f3af4347118bb24220bdc88d881e9e7e0a4f08972'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
