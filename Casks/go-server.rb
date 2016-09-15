cask 'go-server' do
  version '16.9.0-4001'
  sha256 '0f1f681a2a7bf25ba2a48645e4b8170cad0895041d723b340322218c7886f0ef'

  url "https://download.go.cd/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  name 'Go Server'
  homepage 'https://www.go.cd/'
  license :apache

  app 'Go Server.app'
end
