cask 'geneious-prime' do
  version '2020.1.2'
  sha256 'e8701dabdbf399ecd54b94ee0d2d139a74b2e9997e3ea595d086a8edd7dc6367'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
