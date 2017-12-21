cask 'go-server' do
  version '17.11.0-5520'
  sha256 'dd394c2e6342c58dcf8d87b259f8edde4b64efdcfd9188f7d5e20aec3ad570fe'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom',
          checkpoint: '9e3a88815202ffed76a1665fe59343076982308a8fcaa193606cbf3f92a03235'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
