cask :v1 => 'devcenter' do
  version '1.3.0'
  sha256 '2f2041e0a72fbb3881364b043e17236b9f19b92eb98daad0ca1b0b1ca7624fdc'

  url "https://downloads.datastax.com/devcenter/DevCenter-#{version}-macosx-x86_64.tar.gz"
  name 'DataStax DevCenter'
  homepage 'http://www.datastax.com/what-we-offer/products-services/devcenter'
  license :gratis

  app 'devcenter/DevCenter.app'
end
