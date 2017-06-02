cask 'couchbase-server-community' do
  version '4.5.0'
  sha256 '52bac9569c321b0587ea7bc4a809217665f2932655a6bee8291401d6bb5c6917'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-community_#{version.major}/Couchbase Server.app"
end
