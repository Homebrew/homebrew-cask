cask :v1 => 'couchbase-server-enterprise' do
  version '3.0.3'
  sha256 'ee3e42317ea35cea4e2ef3b67c238bc82b9bdcec5b1867a1a160a490cbbf2469'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => '974ab24c0b442af91df0bbeefeba19f65bc952572706a2fa5659a711d481003f'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'couchbase-server-enterprise_x86_64_3/Couchbase Server.app'
end
