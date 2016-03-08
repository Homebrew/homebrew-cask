cask 'go-agent' do
  version '15.1.0-1863'
  sha256 '9777b5069326ef0a178b9c6df114c06d4bf881fb532881b15ba3966bbfbf56d7'

  url "http://download.go.cd/gocd/go-agent-#{version}-osx.zip"
  name 'Go Agent'
  homepage 'https://www.go.cd/'
  license :apache

  app 'Go Agent.app'
end
