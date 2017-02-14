cask 'couchbase-server-enterprise' do
  version '4.6.0-DP'
  sha256 '4b52ad87d703c235b2f9e4e63a8c1b6f4a720d36b28b81cbf593947256399a3f'

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-enterprise_#{version.major}/Couchbase Server.app"
end
