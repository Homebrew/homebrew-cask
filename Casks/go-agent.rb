cask 'go-agent' do
  version '19.6.0-9515'
  sha256 '1237b6c300e4f8f02967c5ec3abb37efefd6e539469385565f308a5ec4bd566e'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Agent'
  homepage 'https://www.gocd.org/'

  app 'Go Agent.app'
end
