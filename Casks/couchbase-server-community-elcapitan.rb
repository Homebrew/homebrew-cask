cask :v1 => 'couchbase-server-community-elcapitan' do
  version '4.0.0'
  sha256 '26edea946d845a96e21e887348f853dff0a632b7bf6d42e9d559b647855648f6'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-elcapitan_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'a49ca050bd47f7a59c871a0955c3682d6c4fbcbb83719038e54614f4da9012e9'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
