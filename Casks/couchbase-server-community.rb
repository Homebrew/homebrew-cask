cask :v1 => 'couchbase-server-community' do
  version '3.0.1'
  sha256 '6693176f6799ce43f71b9fa1f09af8ff6857309382e0d115a9a2253474e5a31a'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  homepage 'http://www.couchbase.com/'
  license :unknown

  app 'Couchbase Server.app'
end
