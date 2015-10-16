cask :v1 => 'devcenter' do
  version '1.4.1'
  sha256 '204f7d9b9a52b0473fd045206006931d545ac7db1e54591325729c32f9ed4e2c'

  url "https://downloads.datastax.com/devcenter/DevCenter-#{version}-macosx-x86_64.tar.gz"
  name 'DataStax DevCenter'
  homepage 'http://www.datastax.com/what-we-offer/products-services/devcenter'
  license :gratis

  app 'devcenter/DevCenter.app'
end
