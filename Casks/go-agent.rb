cask 'go-agent' do
  version '18.9.0-7478'
  sha256 '30ee7b0b851efa47c8ad9cd76440dcb3fdbcc497c6c5a109e7c4562daad6a6ac'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
