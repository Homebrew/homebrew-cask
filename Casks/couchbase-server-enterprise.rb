cask :v1 => 'couchbase-server-enterprise' do
  version '3.0.4'
  sha256 '476599935a1278b71d2bee73e5a34a960901ef78e700d392d440217106c6111c'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => '974ab24c0b442af91df0bbeefeba19f65bc952572706a2fa5659a711d481003f'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
