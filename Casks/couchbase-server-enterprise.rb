cask :v1 => 'couchbase-server-enterprise' do
  version '4.0.0'

  if MacOS.release >= :el_capitan
    sha256 '1510e21f447f847f39509fdc9838a66e3a951ba8e2c1823848f573984bea480f'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-elcapitan_x86_64.zip"
  else
    sha256 '1510e21f447f847f39509fdc9838a66e3a951ba8e2c1823848f573984bea480f'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  end

  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'dad9aa4fd5364576534bb3b765631b5be5f0e1a24303857dce6915d01a297b92'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
