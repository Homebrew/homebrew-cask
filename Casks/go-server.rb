cask 'go-server' do
  version '15.1.0-1863'
  sha256 '25e8aed4e85b8e20af955baa9fded7d48fe5dde9ef71e4542593775b3273eb32'

  url "http://download.go.cd/gocd/go-server-#{version}-osx.zip"
  name 'Go Server'
  homepage 'https://www.go.cd/'
  license :apache

  app 'Go Server.app'
end
