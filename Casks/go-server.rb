cask 'go-server' do
  version '16.12.0-4352'
  sha256 'f0b7f7f401e1a11022978c908f02409c0deec9c1cd5d80a6ae334bd82a7749e9'

  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  name 'Go Server'
  homepage 'https://www.gocd.io/'

  app 'Go Server.app'
end
