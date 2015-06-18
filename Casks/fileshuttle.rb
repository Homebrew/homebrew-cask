cask :v1 => 'fileshuttle' do
  version '2.1'
  sha256 '431b7cb2161eace5b8d39146bdd1b7cc9a85d335eb29175c1a1879208928565a'

  url "http://fileshuttle.io/fileshuttle-#{version}.zip"
  appcast 'http://updates.getfileshuttle.com/update.xml',
          :sha256 => '9c8640556eedc9f07894e1c3d140f86ccdf27c95714aead2937ae562143079e0'
  name 'FileShuttle'
  homepage 'http://fileshuttle.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FileShuttle.app'
end
