cask 'shoes' do
  version '3.3.0'
  sha256 '3046ef61a59cad94f4a4c9931514db730a5a2910d3d3530afd32e841077a65d4'

  # mvmanila.com is the official download host per the vendor homepage
  url "http://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  name 'Shoes'
  homepage 'http://shoesrb.com/'
  license :oss

  app 'Shoes.app'
end
