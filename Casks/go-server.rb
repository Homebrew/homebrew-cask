cask 'go-server' do
  version '16.2.1-3027'
  sha256 '2f0ab075fa1d2d3d522c7c352820ea0e17604bb4fe5b7722e60d259ad66482ff'

  url "https://download.go.cd/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  name 'Go Server'
  homepage 'https://www.go.cd/'
  license :apache

  app 'Go Server.app'
end
