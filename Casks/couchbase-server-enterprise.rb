cask 'couchbase-server-enterprise' do
  version '4.1.0'
  sha256 '237837598a1bf663debaea5c909bce36a39fbc673139cf4d4ebc55fb5c276313'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'f05312af8660b51401dd70cd55ddedeb6de551d5b92372ab155906bc597c9ec7'
  name 'Couchbase Server'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'couchbase-server-enterprise_4/Couchbase Server.app'
end
