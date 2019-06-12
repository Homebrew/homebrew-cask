cask 'go-server' do
  version '19.5.0-9272'
  sha256 'fbfa3b2dd052adbaa2db4853855da7d29cab134fb04488a9ddfed65620b6c838'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
