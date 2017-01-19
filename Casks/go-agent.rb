cask 'go-agent' do
  version '17.1.0-4511'
  sha256 '66cad16c00d89113c7bd7b31a19cf56721334911fcdb9b98de786f2cfdcc8912'

  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'a03aba1085c1682f406b2a113414328bb9d40231b0adde4b945ca81676fbec23'
  name 'Go Agent'
  homepage 'https://www.gocd.io/'

  app 'Go Agent.app'
end
