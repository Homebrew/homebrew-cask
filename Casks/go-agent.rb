cask 'go-agent' do
  version '16.2.1-3027'
  sha256 'a14330ffc77f89cc647e3c1095cb6fa1e76d6795deb7e20108452b426dc1bd9f'

  url "https://download.go.cd/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  name 'Go Agent'
  homepage 'https://www.go.cd/'
  license :apache

  app 'Go Agent.app'
end
