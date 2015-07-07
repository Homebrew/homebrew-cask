cask :v1 => 'couchbase-server-enterprise' do
  version '3.0.3'
  sha256 'ee3e42317ea35cea4e2ef3b67c238bc82b9bdcec5b1867a1a160a490cbbf2469'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'f05312af8660b51401dd70cd55ddedeb6de551d5b92372ab155906bc597c9ec7'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
