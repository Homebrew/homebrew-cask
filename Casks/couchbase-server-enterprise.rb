class CouchbaseServerEnterprise < Cask
  version '2.5.1'
  sha256 'fce890b3c68893ad651da2103ae56d8be6a6310e607aa42b0376fea1a1ca1b41'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}_x86_64.zip"
  homepage 'http://www.couchbase.com/'
  license :unknown

  app 'Couchbase Server.app'
end
