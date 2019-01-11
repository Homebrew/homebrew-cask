cask 'go-agent' do
  version '18.12.0-8222'
  sha256 '625dc3822c9c61b537f52b042e68b11ef45c4cd5d5ca02f4159af8a2249c95a6'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
