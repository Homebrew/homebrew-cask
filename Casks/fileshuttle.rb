cask :v1 => 'fileshuttle' do
  version '2.1'
  sha256 '431b7cb2161eace5b8d39146bdd1b7cc9a85d335eb29175c1a1879208928565a'

  url "http://fileshuttle.io/fileshuttle-#{version}.zip"
  appcast 'http://updates.getfileshuttle.com/update.xml',
          :sha256 => 'd0b84dc832e339fb6d71b76f255365fbd0c7db0457a924f8e4e856e609875284'
  name 'FileShuttle'
  homepage 'http://fileshuttle.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FileShuttle.app'
end
