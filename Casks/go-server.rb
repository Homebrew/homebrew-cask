cask 'go-server' do
  version '19.3.0-8959'
  sha256 'c884c1679786539bc9293b2d01fd24662181dfdffee47575f53a9a766378eac1'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
