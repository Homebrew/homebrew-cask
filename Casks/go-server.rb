cask 'go-server' do
  version '16.10.0-4131'
  sha256 '76e82efae5e6d14e3503384fbb9a2c70a6ada1d6fd6781d1c05de6c7fe349d1f'

  url "https://download.go.cd/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  name 'Go Server'
  homepage 'https://www.go.cd/'

  app 'Go Server.app'
end
