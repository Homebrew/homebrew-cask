cask 'go-server' do
  version '18.5.0-6679'
  sha256 '746b456d5b167196a30d48766aefbf88879c8c174b740dc7d63eabb50de1cdb8'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'c53e6d95ddaf9a7d3a51b82011f8348a7f9e81ff702b088a885f5f58291a8113'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
