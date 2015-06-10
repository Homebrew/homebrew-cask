cask :v1 => 'logicsniffer' do
  version '0.9.7.1'
  sha256 'd3901d6c2356abc5fcbbeb8dc9950148d486b98239cd26c0cca7cc1ce3c4f106'

  url "https://www.lxtreme.nl/ols/ols-#{version}-full.dmg"
  name 'Logic Sniffer'
  homepage 'https://www.lxtreme.nl/ols/'
  license :gpl

  app 'LogicSniffer.app'
end
