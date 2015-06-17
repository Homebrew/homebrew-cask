cask :v1 => 'couchbase-server-community' do
  version '3.0.4'
  sha256 '9a395c960b28ae0234d211b6e78d12599e54623eccbd1a5d001a873965fd71cb'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'f05312af8660b51401dd70cd55ddedeb6de551d5b92372ab155906bc597c9ec7'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
