cask 'go-agent' do
  version '18.3.0-6540'
  sha256 '52530a3f759c3f1a3cedb5eebc55bf8eeae509c9a97c070205f246910c9c6650'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'd00e4e6848947d154dde8fd401343a233eab949f9021ba9ba509a7903fd823bb'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
