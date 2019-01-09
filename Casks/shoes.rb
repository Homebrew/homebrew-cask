cask 'shoes' do
  version '3.3.6'
  sha256 '79fc728d3ba4ee58e477cd37db3020f873802f6e12f4f6299692476e9b2fe64d'

  # shoes.mvmanila.com/public/shoes was verified as official when first introduced to the cask
  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.10.tgz"
  appcast 'http://shoesrb.com/downloads/'
  name 'Shoes'
  homepage 'http://shoesrb.com/'

  depends_on macos: '>= :yosemite'

  app 'Shoes.app'
end
