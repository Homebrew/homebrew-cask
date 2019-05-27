cask 'go-server' do
  version '19.4.0-9155'
  sha256 '325649a44b167ce22b0b22761f321aaa6cc2cfe5db09e2e3c3dafd93a58095e9'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
