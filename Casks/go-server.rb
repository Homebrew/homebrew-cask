cask 'go-server' do
  version '18.10.0-7703'
  sha256 'ec75a894399d0979e56e2de4ddb942071a41c722f46f1ed666a0b108991c24d8'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
