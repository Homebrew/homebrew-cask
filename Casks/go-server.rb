cask 'go-server' do
  version '18.9.0-7478'
  sha256 'a43f46776bb10aa94bae35b095f1ef72450e737ff9a1004d268868038957d25c'

  # download.gocd.io/binaries was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast 'https://github.com/gocd/gocd/releases.atom'
  name 'Go Server'
  homepage 'https://www.gocd.org/'

  app 'Go Server.app'
end
