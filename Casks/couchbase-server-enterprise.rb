cask 'couchbase-server-enterprise' do
  version '4.1.0'
  sha256 '237837598a1bf663debaea5c909bce36a39fbc673139cf4d4ebc55fb5c276313'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  appcast 'http://appcast.couchbase.com/membasex.xml',
          checkpoint: '92ed75092bb887de84b8e2204a44794e18992f8191383cc32d60eae68bf44cd3'
  name 'Couchbase Server'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'couchbase-server-enterprise_4/Couchbase Server.app'
end
