cask :v1 => 'fileshuttle' do
  version '2.1'
  sha256 '431b7cb2161eace5b8d39146bdd1b7cc9a85d335eb29175c1a1879208928565a'

  url "http://fileshuttle.io/fileshuttle-#{version}.zip"
  appcast 'http://updates.getfileshuttle.com/update.xml',
          :sha256 => 'ebb32260fb12727694a0f888cb264285ae219fa98ef6458d725b647f47a2c9e5'
  homepage 'http://fileshuttle.io/'
  license :unknown

  app 'FileShuttle.app'
end
