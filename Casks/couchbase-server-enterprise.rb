cask :v1 => 'couchbase-server-enterprise' do
  version '3.1.0'
  sha256 '1510e21f447f847f39509fdc9838a66e3a951ba8e2c1823848f573984bea480f'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'f05312af8660b51401dd70cd55ddedeb6de551d5b92372ab155906bc597c9ec7'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
