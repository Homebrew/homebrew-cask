cask :v1 => 'go-server' do
  version '14.2.0-377'
  sha256 '19fd85946f838a647dba5de75aff4a63eb0c03f6b0c2f619e42705936053d493'

  url "http://download.go.cd/gocd/go-server-#{version}-osx.zip"
  homepage 'http://www.go.cd/'
  license :unknown

  app 'Go Server.app'
end
