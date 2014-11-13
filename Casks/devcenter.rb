cask :v1 => 'devcenter' do
  version '1.2.0'
  sha256 '39820d3a7ec66ae3011cf72bee029d4f9817490319648837cc72b59d01a870f2'

  url "http://downloads.datastax.com/devcenter/DevCenter-#{version}-macosx-x86_64.tar.gz"
  homepage 'http://www.datastax.com/what-we-offer/products-services/devcenter'
  license :gratis

  app 'devcenter/DevCenter.app'
end
