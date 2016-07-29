cask 'geekbench' do
  version '3.4.1'
  sha256 '9f2730472bba9fd39554290f465d37c32792debc5b20c9840efd1f79d40ca94c'

  url "http://cdn.primatelabs.com/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml',
          checkpoint: '23877fa30558eada7e7beeefee4fa307c7a7ac3fad79b3c250fa09f4c68081c9'
  name 'Geekbench'
  homepage 'http://www.primatelabs.com/geekbench/'
  license :commercial

  app 'Geekbench 3.app'
end
