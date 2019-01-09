cask 'couchbase-server-community' do
  version '6.0.0'
  sha256 '26d835f0a45767d9f663a6bc4dafdddbd200e0dc3da55a2e1dac87beda1ee241'

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-community_#{version}/Couchbase Server.app"
end
