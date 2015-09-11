cask :v1 => 'couchbase-server-community' do
  version '3.0.1'
  sha256 '6693176f6799ce43f71b9fa1f09af8ff6857309382e0d115a9a2253474e5a31a'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'f05312af8660b51401dd70cd55ddedeb6de551d5b92372ab155906bc597c9ec7'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
