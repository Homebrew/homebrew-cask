cask 'geneious-prime' do
  version '2020.2.2'
  sha256 '056c6f05c49e494a2e7b7011e43aa993e545e26c3d20d948b26beffbd550da02'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
