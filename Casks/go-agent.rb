cask 'go-agent' do
  version '19.4.0-9155'
  sha256 '70bd0996364ea8b1e5ee1fef18a97bef0d91b31c264b2810e3e40a6cef1d0860'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
