cask 'couchbase-server-community' do
  version '5.0.1'
  sha256 '14ccc4fad7f4fc4cc66e6dcaa384781b1c5f18b60a5bb58c6b508dbc29bab9be'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-community_#{version}/Couchbase Server.app"
end
