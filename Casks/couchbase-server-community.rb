cask 'couchbase-server-community' do
  version '6.5.1'
  sha256 '940497d462e22dfe28d7ab6e1d2d9245a8326c06ad6733692f3e8eb6887ff682'

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.dmg"
  appcast 'http://appcast.couchbase.com/membasex.xml'
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-community_#{version}/Couchbase Server.app"
end
