cask 'geneious-prime' do
  version '2019.2.3'
  sha256 'cd452e9c8ef668164f6fdeab869784bf6260fc9182d6b16acf2672cfc8e3fbef'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
