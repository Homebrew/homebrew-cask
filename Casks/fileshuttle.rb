cask :v1 => 'fileshuttle' do
  version '2.1'
  sha256 '431b7cb2161eace5b8d39146bdd1b7cc9a85d335eb29175c1a1879208928565a'

  url "https://fileshuttle.io/fileshuttle-#{version}.zip"
  appcast 'https://fileshuttle.io/update.xml',
          :sha256 => 'bb04ae1f2834d488b0faf6a12320b8a75832e3de1123e9fb538c5f22e835b9d9'
  name 'FileShuttle'
  homepage 'https://fileshuttle.io/'
  license :other

  app 'FileShuttle.app'
end
