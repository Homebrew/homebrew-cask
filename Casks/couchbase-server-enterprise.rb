cask 'couchbase-server-enterprise' do
  version '4.1.0'
  sha256 '0b8e56ce84169fd491ef70df81317f87e140784b81aff8c8b5740a3564b264cd'
  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"

  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'f05312af8660b51401dd70cd55ddedeb6de551d5b92372ab155906bc597c9ec7'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
