cask 'fileshuttle' do
  version '2.1'
  sha256 '431b7cb2161eace5b8d39146bdd1b7cc9a85d335eb29175c1a1879208928565a'

  url "https://fileshuttle.io/fileshuttle-#{version}.zip"
  appcast 'https://fileshuttle.io/update.xml',
          :sha256 => '7c64af82391b1e84d716e9a51dcb86ca6d36f6232c156c09fddec5470bafb292'
  name 'FileShuttle'
  homepage 'https://fileshuttle.io/'
  license :other

  app 'FileShuttle.app'
end
