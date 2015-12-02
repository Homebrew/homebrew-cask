cask :v1 => 'couchbase-server-enterprise' do
  version '4.0.0'

  if MacOS.release <= :yosemite
    sha256 'dad9aa4fd5364576534bb3b765631b5be5f0e1a24303857dce6915d01a297b92'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  else
    sha256 'a49ca050bd47f7a59c871a0955c3682d6c4fbcbb83719038e54614f4da9012e9'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-elcapitan_x86_64.zip"
  end

  name 'Couchbase Server'
  appcast 'http://appcast.couchbase.com/membasex.xml',
          :sha256 => 'f05312af8660b51401dd70cd55ddedeb6de551d5b92372ab155906bc597c9ec7'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
