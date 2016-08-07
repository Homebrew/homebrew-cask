cask 'protonet' do
  version '1.6.3023'
  sha256 'ffb5e0e87160a470a5ba695fd9f5ad720f6450f97a506dddb5ef31bf3e2f5ad8'

  url "http://clients.protonet.info/osx/stable/protonet-#{version}.zip"
  appcast 'http://clients.protonet.info/osx/stable/appcast.xml',
          checkpoint: 'a569e738ec99b7a684dbf2859f54bb57689b2a7c9df8b8d9c5865bfb5364cad3'
  name 'Protonet'
  homepage 'http://clients.protonet.info/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Protonet.app'
end
