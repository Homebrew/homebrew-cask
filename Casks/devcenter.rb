cask 'devcenter' do
  version '1.5.0'
  sha256 'f2d312e7450996f539f4f118043d091a9753c02aab1743e4b26e9b4e3bca3b83'

  url "https://downloads.datastax.com/devcenter/DevCenter-#{version}-macosx-x86_64.tar.gz"
  name 'DataStax DevCenter'
  homepage 'https://www.datastax.com/what-we-offer/products-services/devcenter'
  license :gratis

  app 'devcenter/DevCenter.app'
end
