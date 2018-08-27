cask 'fileshuttle' do
  version '2.1'
  sha256 '431b7cb2161eace5b8d39146bdd1b7cc9a85d335eb29175c1a1879208928565a'

  url "https://fileshuttle.io/fileshuttle-#{version}.zip"
  appcast 'https://fileshuttle.io/update.xml'
  name 'FileShuttle'
  homepage 'https://fileshuttle.io/'

  app 'FileShuttle.app'
end
