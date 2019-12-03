cask 'geneious-prime' do
  version '2020.0.4'
  sha256 '34146eb8f9de56c4aceebdc50291254fcf309fd35a2980780dcc9a29ac0c2449'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
