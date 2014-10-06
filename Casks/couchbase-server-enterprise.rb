class CouchbaseServerEnterprise < Cask
  version '3.0.0'
  sha256 'b3ea2d7dd10e97b51aa2492b4e1877f53d7ff3d45f401565dd117caf77e5f37d'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  homepage 'http://www.couchbase.com/'
  license :unknown

  app 'Couchbase Server.app'
end
