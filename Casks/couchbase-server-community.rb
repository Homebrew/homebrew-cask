class CouchbaseServerCommunity < Cask
  version '3.0.0'
  sha256 'cf8f77cc3d5f164a8d49578af512f050afb515c7bd03b271f99110d31ac14ecd'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  homepage 'http://www.couchbase.com/'
  license :unknown

  app 'Couchbase Server.app'
end
