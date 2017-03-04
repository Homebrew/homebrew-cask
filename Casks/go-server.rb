cask 'go-server' do
  version '17.1.0-4511'
  sha256 'c59880d7a7f48000be201cad51699ab0dc99d8279e949d38bd6fe34d14e765fd'

  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'a03aba1085c1682f406b2a113414328bb9d40231b0adde4b945ca81676fbec23'
  name 'Go Server'
  homepage 'https://www.gocd.io/'

  app 'Go Server.app'
end
