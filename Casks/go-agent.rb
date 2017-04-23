cask 'go-agent' do
  version '17.3.0-4704'
  sha256 'a3f4fc0bf61e6a75c86fe7a7651d4125fca337d4ace25bde289c7fa959d9c789'

  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'ce17e0124c329cc9c755c014579480f4ac0ffb78543db6da611c86ba09cd74b7'
  name 'Go Agent'
  homepage 'https://www.gocd.io/'

  app 'Go Agent.app'
end
