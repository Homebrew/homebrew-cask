cask 'geneious-prime' do
  version '2020.0.2'
  sha256 '79e33b4f4b91c90c673a7d0cf3ab9d44db5c26f835c2ca8ed62d477f0a78a352'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
