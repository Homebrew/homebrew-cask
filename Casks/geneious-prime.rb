cask 'geneious-prime' do
  version '2020.0.5'
  sha256 '5ef6ac1ed4b1cf15f3021c30f590296c65a8458b744047689a66cf905a0dd8fb'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_Prime_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  appcast 'https://www.geneious.com/download/'
  name 'Geneious Prime'
  homepage 'https://www.geneious.com/'

  app 'Geneious Prime.app'
end
