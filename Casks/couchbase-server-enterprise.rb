cask :v1 => 'couchbase-server-enterprise' do
  version '3.0.1'
  sha256 '1cbd844855102013b0b7afe129721900771f1069b550696a30fc639d78c4eca8'

  url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  homepage 'http://www.couchbase.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Couchbase Server.app'
end
