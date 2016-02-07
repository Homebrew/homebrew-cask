cask 'couchbase-server-community' do
  version '4.0.0'

  if MacOS.release <= :yosemite
    sha256 'ff994c89abf2efcc7dafa6753cfc25c821f3cc24935dccb7a979d170ced56162'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.zip"
  else
    sha256 'ce39892b66c06d153004474e273d5775515710e7b073269f75637bf2c4f1f2c4'
    url "http://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-elcapitan_x86_64.zip"
  end

  name 'Couchbase Server'
  homepage 'http://www.couchbase.com/'
  license :apache

  app 'Couchbase Server.app'
end
