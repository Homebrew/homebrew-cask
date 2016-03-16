cask 'go-server' do
  version '16.2.1-3027'
  sha1 '04d485692e075d035bb2ff1b2f1d64b1d1675aee'

  url "http://download.go.cd/binaries/osx/go-server-#{version}-osx.zip"
  name 'Go Server'
  homepage 'https://www.go.cd/'
  license :apache

  app 'Go Server.app'
end
