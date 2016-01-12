cask 'protonet' do
  version '1.6.3023'
  sha256 'ffb5e0e87160a470a5ba695fd9f5ad720f6450f97a506dddb5ef31bf3e2f5ad8'

  url "http://clients.protonet.info/osx/stable/protonet-#{version}.zip"
  appcast 'http://clients.protonet.info/osx/stable/appcast.xml',
          :sha256 => 'c7647efce7af2687caa0ce9df3ea838b9aa4b3c3679641d2c7e971a756dce0a0'
  name 'Protonet'
  homepage 'http://clients.protonet.info/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Protonet.app'
end
