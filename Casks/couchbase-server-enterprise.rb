cask :v1 => 'couchbase-server-enterprise' do
  version '3.0.2'
  sha256 '6129bd810ed8d5a27cc5d25e82b998e90f7b6f283fca8841592e0e842c8578d9'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
