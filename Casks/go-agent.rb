cask 'go-agent' do
  version '18.7.0-7121'
  sha256 '4ea03c85906ea72ad260b045270c2eda243ccf2820329bdfd298b8d263a89833'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
