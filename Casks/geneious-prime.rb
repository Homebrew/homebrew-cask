cask 'geneious-prime' do
  version '2019.1.3'
  sha256 'cc2ee59ce2bcba7d7eb08f0e10efc8ce28a10a24ad417b5e0fb7a676c20fa2a3'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
