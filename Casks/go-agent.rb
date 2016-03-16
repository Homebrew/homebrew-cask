cask 'go-agent' do
  version '16.2.1-3027'
  sha1 '22cf595a6bfdd980524c540dc205fe06e2ff1f47'

  url "http://download.go.cd/binaries/osx/go-agent-#{version}-osx.zip"
  name 'Go Agent'
  homepage 'https://www.go.cd/'
  license :apache

  app 'Go Agent.app'
end
