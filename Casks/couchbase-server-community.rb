cask 'couchbase-server-community' do
  version '4.1.0'
  sha256 '2a31b94f625391304fd8afd97c70a999eb9b5329d7dc13128e6c844bc142a7a5'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-community_#{version.major}/Couchbase Server.app"
end
