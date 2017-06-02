cask 'go-server' do
  version '17.4.0-4892'
  sha256 'f3b70cfec9a79ce6966f8e71e9ba6acbbbb5b90a4c2048e001675264bdc6c3bb'

  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'abcc8b9914fb3fdb0658581f43d6e5f673af0e359519febad83f61583ef76b70'
  name 'Go Server'
  homepage 'https://www.gocd.io/'

  app 'Go Server.app'
end
