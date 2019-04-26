cask 'go-agent' do
  version '19.3.0-8959'
  sha256 '35639eec8f9e2200e8a12e52ae0a109a1e1fc3d4ac377e582b967c79dd785d41'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
