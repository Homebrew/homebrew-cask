cask 'geneious-prime' do
  version '2020.0.3'
  sha256 'a343bf8829f9741f2b93d510c7506ebac69ac984bd0f40a8f084866eef529ff5'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
