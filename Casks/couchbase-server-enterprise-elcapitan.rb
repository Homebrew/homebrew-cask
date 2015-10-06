cask :v1 => 'couchbase-server-enterprise-elcapitan' do
  version '4.0.0'
  sha256 '1510e21f447f847f39509fdc9838a66e3a951ba8e2c1823848f573984bea480f'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-elcapitan_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'a49ca050bd47f7a59c871a0955c3682d6c4fbcbb83719038e54614f4da9012e9'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
