cask 'go-agent' do
  version '19.5.0-9272'
  sha256 '3a16ee068be6350c065ff07e3427cf5750fc0f70e8b87a0e50b45e2b85485365'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
