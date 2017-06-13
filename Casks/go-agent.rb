cask 'go-agent' do
  version '17.5.0-5095'
  sha256 'ba40ab1a72ad90a308ec69b14dc91c3cd57ee376e3574d76c7bc6986b7ca52d5'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '4e4f162d063d75ea1ff1642a0c0544cf6c628b1a915329e8c5fbf88da2dd6ce8'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
