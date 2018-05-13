cask 'go-agent' do
  version '18.5.0-6679'
  sha256 'ebabafdbfc3396d36d1c8c8f26650a946ee5f175f00b89c856a5e127a2db2bcd'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: 'c53e6d95ddaf9a7d3a51b82011f8348a7f9e81ff702b088a885f5f58291a8113'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
