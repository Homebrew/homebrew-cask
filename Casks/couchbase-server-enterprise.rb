cask 'couchbase-server-enterprise' do
  version '4.1.0'
  sha256 '237837598a1bf663debaea5c909bce36a39fbc673139cf4d4ebc55fb5c276313'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => '5f3931443069e348470da4e25b32f6b2429e447a0d7279ac4493fb04d9c74ece'
  name 'Couchbase Server'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'couchbase-server-enterprise_4/Couchbase Server.app'
end
