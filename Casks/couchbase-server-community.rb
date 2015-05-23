cask :v1 => 'couchbase-server-community' do
  version '3.0.1'
  sha256 '6693176f6799ce43f71b9fa1f09af8ff6857309382e0d115a9a2253474e5a31a'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => '974ab24c0b442af91df0bbeefeba19f65bc952572706a2fa5659a711d481003f'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
