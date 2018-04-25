cask 'go-server' do
  version '18.3.0-6540'
  sha256 'cea20e596192cb4dd55416a76ff6d5c742916d74c4a9a5d0bc77c95098f53b53'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'd00e4e6848947d154dde8fd401343a233eab949f9021ba9ba509a7903fd823bb'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
