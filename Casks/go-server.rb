cask 'go-server' do
  version '18.12.0-8222'
  sha256 'ef311ae2c2236de6bc77d430109025d27414696833885153083e8c2b30fab67f'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
