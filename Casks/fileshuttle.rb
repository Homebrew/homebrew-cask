cask 'fileshuttle' do
  version '2.1'
  sha256 '431b7cb2161eace5b8d39146bdd1b7cc9a85d335eb29175c1a1879208928565a'

  url "https://fileshuttle.io/fileshuttle-#{version}.zip"
  appcast 'https://fileshuttle.io/update.xml',
          checkpoint: 'd313d70dd38d61d4157fd14494cd1acf3d87eeb56ba3d1152f869afd6fe35675'
  name 'FileShuttle'
  homepage 'https://fileshuttle.io/'
  license :other

  app 'FileShuttle.app'
end
