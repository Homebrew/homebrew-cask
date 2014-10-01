class CouchbaseServerCommunity < Cask
  version '2.2.0'
  sha256 'a5a99c09d405519e7dd7d28676004cf352356d932cee1f3638f8c9db9045f15a'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}_x86_64.zip"
  homepage 'http://www.couchbase.com/'
  license :unknown

  app 'Couchbase Server.app'
end
