cask 'go-agent' do
  version '17.4.0-4892'
  sha256 '61c0ee4c74328d16cc543963217b9f79470b795870427834b67c30162e957b1b'

  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'abcc8b9914fb3fdb0658581f43d6e5f673af0e359519febad83f61583ef76b70'
  name 'Go Agent'
  homepage 'https://www.gocd.io/'

  app 'Go Agent.app'
end
