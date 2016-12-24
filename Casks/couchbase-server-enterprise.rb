cask 'couchbase-server-enterprise' do
  version '4.5.1'
  sha256 'de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-enterprise_#{version.major}/Couchbase Server.app"
end
