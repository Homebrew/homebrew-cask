cask :v1 => 'couchbase-server-community' do
  version '4.0.0'

  if MacOS.release <= :yosemite
    sha256 'ff994c89abf2efcc7dafa6753cfc25c821f3cc24935dccb7a979d170ced56162'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  else
    sha256 '26edea946d845a96e21e887348f853dff0a632b7bf6d42e9d559b647855648f6'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-elcapitan_x86_64.zip"
  end

  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'f05312af8660b51401dd70cd55ddedeb6de551d5b92372ab155906bc597c9ec7'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
