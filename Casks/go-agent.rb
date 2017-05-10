cask 'go-agent' do
  version '17.3.0-4704'
  sha256 'a3f4fc0bf61e6a75c86fe7a7651d4125fca337d4ace25bde289c7fa959d9c789'

  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'abcc8b9914fb3fdb0658581f43d6e5f673af0e359519febad83f61583ef76b70'
  name 'Go Agent'
  homepage 'https://www.gocd.io/'

  app 'Go Agent.app'
end
