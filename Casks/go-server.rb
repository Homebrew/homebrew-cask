cask 'go-server' do
  version '19.6.0-9515'
  sha256 '63fef043098a072517022ee08a84a9b631d33487a8eb252e2826807f220af1ce'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
