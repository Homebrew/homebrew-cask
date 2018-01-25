cask 'couchbase-server-community' do
  version '5.0.0'
  sha256 'bc80c709424e5ae41b0415c472ed568113c7fc5d24ca31996198807bd2d0c3b1'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-community_#{version}/Couchbase Server.app"
end
