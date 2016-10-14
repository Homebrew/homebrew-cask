cask 'shoes' do
  version '3.3.1'
  sha256 'f30a01d1e5dadc7dd775d140de9f04bf12a5046e4f2d5931ea7b67372ebe56fa'

  # shoes.mvmanila.com/public/shoes was verified as official when first introduced to the cask
  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  name 'Shoes'
  homepage 'http://shoesrb.com/'

  app 'Shoes.app'
end
