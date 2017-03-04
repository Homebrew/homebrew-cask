cask 'protonet' do
  version '1.6.3023'
  sha256 'ffb5e0e87160a470a5ba695fd9f5ad720f6450f97a506dddb5ef31bf3e2f5ad8'

  url "http://clients.protonet.info/osx/stable/protonet-#{version}.zip"
  appcast 'http://clients.protonet.info/osx/stable/appcast.xml',
          checkpoint: '7bbbe7ac04c99a9d4882d17794c81cbbd6ab951507e47312a9b246887624e9ad'
  name 'Protonet'
  homepage 'http://clients.protonet.info/'

  app 'Protonet.app'
end
