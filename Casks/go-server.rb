cask 'go-server' do
  version '18.7.0-7121'
  sha256 '150bf7b079ff0514405eda355b224ca9ef73b62129622828f049342a36beaf37'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
