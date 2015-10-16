cask :v1 => 'shoes' do
  version '3.2.25'
  sha256 'd466803c01640a220c50d28db6d08e8bb1c012e0363badc13c2b488438e1568c'

  # mvmanila.com is the official download host per the vendor homepage
  url "http://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  name 'Shoes'
  homepage 'http://shoesrb.com/'
  license :oss

  app 'Shoes.app'
end
