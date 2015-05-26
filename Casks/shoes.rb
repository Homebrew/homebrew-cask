cask :v1 => 'shoes' do
  version '3.2.21'
  sha256 'a2cdbba4f054c3c885d56038b4dd813c23957e1d0b1b084ca1e3a3d4bb9fcde1'

  # mvmanila.com is the official download host per the vendor homepage
  url "http://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  name 'Shoes'
  homepage 'http://shoesrb.com/'
  license :oss

  app 'Shoes.app'
end
