cask 'couchbase-server-community' do
  version '4.0.0'

  if MacOS.release <= :yosemite
    sha256 'ff994c89abf2efcc7dafa6753cfc25c821f3cc24935dccb7a979d170ced56162'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  else
    sha256 '26edea946d845a96e21e887348f853dff0a632b7bf6d42e9d559b647855648f6'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-elcapitan_x86_64.zip"
  end

  appcast 'http://appcast.couchbase.com/membasex.xml',
          checkpoint: '92ed75092bb887de84b8e2204a44794e18992f8191383cc32d60eae68bf44cd3'
  name 'Couchbase Server'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
