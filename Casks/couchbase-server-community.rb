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
          :sha256 => '5f3931443069e348470da4e25b32f6b2429e447a0d7279ac4493fb04d9c74ece'
  name 'Couchbase Server'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
