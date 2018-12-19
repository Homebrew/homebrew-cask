cask 'go-agent' do
  version '18.10.0-7703'
  sha256 'f1bbcc468033c77197654833f4c08bf5415f0db26b841ab526ee899269f33017'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
